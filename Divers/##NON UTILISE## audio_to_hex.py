import soundfile as sf
import numpy
import os
import argparse


def convert_to_mono(stereo_data, channels):
    mono_data = numpy.zeros(len(stereo_data))
    for i in range(0, len(stereo_data) - 1):
        mono_data[i] = sum(stereo_data[i]) / channels
    return mono_data


def write_to_raw_file(array, filename, samplerate):
    with sf.SoundFile(filename,
                      'w',
                      samplerate,
                      1,
                      'PCM_24',
                      'BIG',
                      'RAW') as raw:
        raw.write(array)
        assert not raw.closed
    assert raw.closed


def compute_checksum(hex_string):
    n = 2
    array = [hex_string[i:i + n] for i in range(0, len(hex_string), n)]
    for i in range(0, len(array)):
        array[i] = int(array[i], 16)

    checksum = sum(array) % 256
    checksum_hex = ("{0:0{1}x}".format(checksum, 4))[-2:]
    checksum_hex = hex(int('FF', 16) - int(checksum_hex, 16) + 1)[-2:]
    checksum_hex = checksum_hex.replace('x', '0')
    return checksum_hex


def sample_to_hex(sample):
    sample = int.from_bytes(sample, byteorder='big')
    hex = sample.hex()
    return hex[-6:]


def convert_to_hex_file(raw_filename, hex_filename):
    raw_file = open(raw_filename, "rb")
    hexfile = open(hex_filename, "w")

    try:
        sample = raw_file.read(3)
        print(sample)
        print(type(sample))
        offset = 0
        while len(sample) > 0:
            offset_hex = "{0:0{1}x}".format(offset, 4)
            s = "03" + str(offset_hex)[-4:] + "00" + sample_to_hex(sample)

            s = ":" + s + compute_checksum(s)
            hexfile.write(s+"\n")
            sample = raw_file.read(3)
            offset += 3
    finally:
        raw_file.close()
        os.remove(raw_filename)
    hexfile.write(":00000001FF")
    hexfile.close()


def wav_to_hex(filename, hex_filename="", raw_filename="temp.raw"):
    if hex_filename == "":
        hex_filename = os.path.splitext(filename)[0] + ".hex"
    f = sf.SoundFile(filename)
    data = f.read()
    if f.channels != 1:
        data = convert_to_mono(data, f.channels)

    write_to_raw_file(data, raw_filename, f.samplerate)
    convert_to_hex_file(raw_filename, hex_filename)


