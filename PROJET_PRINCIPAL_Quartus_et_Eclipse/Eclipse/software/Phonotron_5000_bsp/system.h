/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'nios2_qsys_0' in SOPC Builder design 'nios_ii'
 * SOPC Builder design path: D:/dervieux/Projet_VGA_NIOS/nios_ii.sopcinfo
 *
 * Generated: Mon Nov 20 11:15:46 CET 2017
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * AUDIO_DAC_FIFO_0 configuration
 *
 */

#define ALT_MODULE_CLASS_AUDIO_DAC_FIFO_0 AUDIO_DAC_FIFO
#define AUDIO_DAC_FIFO_0_BASE 0x101280
#define AUDIO_DAC_FIFO_0_IRQ -1
#define AUDIO_DAC_FIFO_0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define AUDIO_DAC_FIFO_0_NAME "/dev/AUDIO_DAC_FIFO_0"
#define AUDIO_DAC_FIFO_0_SPAN 2
#define AUDIO_DAC_FIFO_0_TYPE "AUDIO_DAC_FIFO"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_qsys"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x100820
#define ALT_CPU_CPU_FREQ 100000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "fast"
#define ALT_CPU_DATA_ADDR_WIDTH 0x15
#define ALT_CPU_DCACHE_LINE_SIZE 32
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_DCACHE_SIZE 2048
#define ALT_CPU_EXCEPTION_ADDR 0x80020
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 100000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 1
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 32
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_ICACHE_SIZE 4096
#define ALT_CPU_INITDA_SUPPORTED
#define ALT_CPU_INST_ADDR_WIDTH 0x15
#define ALT_CPU_NAME "nios2_qsys_0"
#define ALT_CPU_NUM_OF_SHADOW_REG_SETS 0
#define ALT_CPU_RESET_ADDR 0x80000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x100820
#define NIOS2_CPU_FREQ 100000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "fast"
#define NIOS2_DATA_ADDR_WIDTH 0x15
#define NIOS2_DCACHE_LINE_SIZE 32
#define NIOS2_DCACHE_LINE_SIZE_LOG2 5
#define NIOS2_DCACHE_SIZE 2048
#define NIOS2_EXCEPTION_ADDR 0x80020
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 1
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 32
#define NIOS2_ICACHE_LINE_SIZE_LOG2 5
#define NIOS2_ICACHE_SIZE 4096
#define NIOS2_INITDA_SUPPORTED
#define NIOS2_INST_ADDR_WIDTH 0x15
#define NIOS2_NUM_OF_SHADOW_REG_SETS 0
#define NIOS2_RESET_ADDR 0x80000


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_PIO
#define __ALTERA_AVALON_TIMER
#define __ALTERA_NIOS2_QSYS
#define __AUDIO_DAC_FIFO
#define __SRAM_DE2


/*
 * SRAM_DE2_0 configuration
 *
 */

#define ALT_MODULE_CLASS_SRAM_DE2_0 SRAM_DE2
#define SRAM_DE2_0_BASE 0x80000
#define SRAM_DE2_0_IRQ -1
#define SRAM_DE2_0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SRAM_DE2_0_NAME "/dev/SRAM_DE2_0"
#define SRAM_DE2_0_SPAN 524288
#define SRAM_DE2_0_TYPE "SRAM_DE2"


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone II"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/jtag_uart_0"
#define ALT_STDERR_BASE 0x101278
#define ALT_STDERR_DEV jtag_uart_0
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/jtag_uart_0"
#define ALT_STDIN_BASE 0x101278
#define ALT_STDIN_DEV jtag_uart_0
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/jtag_uart_0"
#define ALT_STDOUT_BASE 0x101278
#define ALT_STDOUT_DEV jtag_uart_0
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "nios_ii"


/*
 * audio_sos configuration
 *
 */

#define ALT_MODULE_CLASS_audio_sos altera_avalon_pio
#define AUDIO_SOS_BASE 0x101160
#define AUDIO_SOS_BIT_CLEARING_EDGE_REGISTER 0
#define AUDIO_SOS_BIT_MODIFYING_OUTPUT_REGISTER 0
#define AUDIO_SOS_CAPTURE 0
#define AUDIO_SOS_DATA_WIDTH 32
#define AUDIO_SOS_DO_TEST_BENCH_WIRING 0
#define AUDIO_SOS_DRIVEN_SIM_VALUE 0
#define AUDIO_SOS_EDGE_TYPE "NONE"
#define AUDIO_SOS_FREQ 100000000
#define AUDIO_SOS_HAS_IN 0
#define AUDIO_SOS_HAS_OUT 1
#define AUDIO_SOS_HAS_TRI 0
#define AUDIO_SOS_IRQ -1
#define AUDIO_SOS_IRQ_INTERRUPT_CONTROLLER_ID -1
#define AUDIO_SOS_IRQ_TYPE "NONE"
#define AUDIO_SOS_NAME "/dev/audio_sos"
#define AUDIO_SOS_RESET_VALUE 0
#define AUDIO_SOS_SPAN 16
#define AUDIO_SOS_TYPE "altera_avalon_pio"


/*
 * clap_irq configuration
 *
 */

#define ALT_MODULE_CLASS_clap_irq altera_avalon_pio
#define CLAP_IRQ_BASE 0x101180
#define CLAP_IRQ_BIT_CLEARING_EDGE_REGISTER 0
#define CLAP_IRQ_BIT_MODIFYING_OUTPUT_REGISTER 0
#define CLAP_IRQ_CAPTURE 1
#define CLAP_IRQ_DATA_WIDTH 1
#define CLAP_IRQ_DO_TEST_BENCH_WIRING 0
#define CLAP_IRQ_DRIVEN_SIM_VALUE 0
#define CLAP_IRQ_EDGE_TYPE "RISING"
#define CLAP_IRQ_FREQ 100000000
#define CLAP_IRQ_HAS_IN 1
#define CLAP_IRQ_HAS_OUT 0
#define CLAP_IRQ_HAS_TRI 0
#define CLAP_IRQ_IRQ 6
#define CLAP_IRQ_IRQ_INTERRUPT_CONTROLLER_ID 0
#define CLAP_IRQ_IRQ_TYPE "EDGE"
#define CLAP_IRQ_NAME "/dev/clap_irq"
#define CLAP_IRQ_RESET_VALUE 0
#define CLAP_IRQ_SPAN 16
#define CLAP_IRQ_TYPE "altera_avalon_pio"


/*
 * color_out configuration
 *
 */

#define ALT_MODULE_CLASS_color_out altera_avalon_pio
#define COLOR_OUT_BASE 0x101240
#define COLOR_OUT_BIT_CLEARING_EDGE_REGISTER 0
#define COLOR_OUT_BIT_MODIFYING_OUTPUT_REGISTER 0
#define COLOR_OUT_CAPTURE 0
#define COLOR_OUT_DATA_WIDTH 2
#define COLOR_OUT_DO_TEST_BENCH_WIRING 0
#define COLOR_OUT_DRIVEN_SIM_VALUE 0
#define COLOR_OUT_EDGE_TYPE "NONE"
#define COLOR_OUT_FREQ 100000000
#define COLOR_OUT_HAS_IN 0
#define COLOR_OUT_HAS_OUT 1
#define COLOR_OUT_HAS_TRI 0
#define COLOR_OUT_IRQ -1
#define COLOR_OUT_IRQ_INTERRUPT_CONTROLLER_ID -1
#define COLOR_OUT_IRQ_TYPE "NONE"
#define COLOR_OUT_NAME "/dev/color_out"
#define COLOR_OUT_RESET_VALUE 0
#define COLOR_OUT_SPAN 16
#define COLOR_OUT_TYPE "altera_avalon_pio"


/*
 * dac_irq configuration
 *
 */

#define ALT_MODULE_CLASS_dac_irq altera_avalon_pio
#define DAC_IRQ_BASE 0x101170
#define DAC_IRQ_BIT_CLEARING_EDGE_REGISTER 0
#define DAC_IRQ_BIT_MODIFYING_OUTPUT_REGISTER 0
#define DAC_IRQ_CAPTURE 1
#define DAC_IRQ_DATA_WIDTH 1
#define DAC_IRQ_DO_TEST_BENCH_WIRING 0
#define DAC_IRQ_DRIVEN_SIM_VALUE 0
#define DAC_IRQ_EDGE_TYPE "RISING"
#define DAC_IRQ_FREQ 100000000
#define DAC_IRQ_HAS_IN 1
#define DAC_IRQ_HAS_OUT 0
#define DAC_IRQ_HAS_TRI 0
#define DAC_IRQ_IRQ 7
#define DAC_IRQ_IRQ_INTERRUPT_CONTROLLER_ID 0
#define DAC_IRQ_IRQ_TYPE "EDGE"
#define DAC_IRQ_NAME "/dev/dac_irq"
#define DAC_IRQ_RESET_VALUE 0
#define DAC_IRQ_SPAN 16
#define DAC_IRQ_TYPE "altera_avalon_pio"


/*
 * hal configuration
 *
 */

#define ALT_MAX_FD 32
#define ALT_SYS_CLK TIMER_0
#define ALT_TIMESTAMP_CLK none


/*
 * hh_irq configuration
 *
 */

#define ALT_MODULE_CLASS_hh_irq altera_avalon_pio
#define HH_IRQ_BASE 0x101190
#define HH_IRQ_BIT_CLEARING_EDGE_REGISTER 0
#define HH_IRQ_BIT_MODIFYING_OUTPUT_REGISTER 0
#define HH_IRQ_CAPTURE 1
#define HH_IRQ_DATA_WIDTH 1
#define HH_IRQ_DO_TEST_BENCH_WIRING 0
#define HH_IRQ_DRIVEN_SIM_VALUE 0
#define HH_IRQ_EDGE_TYPE "RISING"
#define HH_IRQ_FREQ 100000000
#define HH_IRQ_HAS_IN 1
#define HH_IRQ_HAS_OUT 0
#define HH_IRQ_HAS_TRI 0
#define HH_IRQ_IRQ 5
#define HH_IRQ_IRQ_INTERRUPT_CONTROLLER_ID 0
#define HH_IRQ_IRQ_TYPE "EDGE"
#define HH_IRQ_NAME "/dev/hh_irq"
#define HH_IRQ_RESET_VALUE 0
#define HH_IRQ_SPAN 16
#define HH_IRQ_TYPE "altera_avalon_pio"


/*
 * in_bus configuration
 *
 */

#define ALT_MODULE_CLASS_in_bus altera_avalon_pio
#define IN_BUS_BASE 0x101260
#define IN_BUS_BIT_CLEARING_EDGE_REGISTER 0
#define IN_BUS_BIT_MODIFYING_OUTPUT_REGISTER 0
#define IN_BUS_CAPTURE 0
#define IN_BUS_DATA_WIDTH 20
#define IN_BUS_DO_TEST_BENCH_WIRING 0
#define IN_BUS_DRIVEN_SIM_VALUE 0
#define IN_BUS_EDGE_TYPE "NONE"
#define IN_BUS_FREQ 100000000
#define IN_BUS_HAS_IN 1
#define IN_BUS_HAS_OUT 0
#define IN_BUS_HAS_TRI 0
#define IN_BUS_IRQ -1
#define IN_BUS_IRQ_INTERRUPT_CONTROLLER_ID -1
#define IN_BUS_IRQ_TYPE "NONE"
#define IN_BUS_NAME "/dev/in_bus"
#define IN_BUS_RESET_VALUE 0
#define IN_BUS_SPAN 16
#define IN_BUS_TYPE "altera_avalon_pio"


/*
 * jtag_uart_0 configuration
 *
 */

#define ALT_MODULE_CLASS_jtag_uart_0 altera_avalon_jtag_uart
#define JTAG_UART_0_BASE 0x101278
#define JTAG_UART_0_IRQ 1
#define JTAG_UART_0_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_UART_0_NAME "/dev/jtag_uart_0"
#define JTAG_UART_0_READ_DEPTH 64
#define JTAG_UART_0_READ_THRESHOLD 8
#define JTAG_UART_0_SPAN 8
#define JTAG_UART_0_TYPE "altera_avalon_jtag_uart"
#define JTAG_UART_0_WRITE_DEPTH 64
#define JTAG_UART_0_WRITE_THRESHOLD 8


/*
 * kb_data configuration
 *
 */

#define ALT_MODULE_CLASS_kb_data altera_avalon_pio
#define KB_DATA_BASE 0x1011d0
#define KB_DATA_BIT_CLEARING_EDGE_REGISTER 0
#define KB_DATA_BIT_MODIFYING_OUTPUT_REGISTER 0
#define KB_DATA_CAPTURE 0
#define KB_DATA_DATA_WIDTH 8
#define KB_DATA_DO_TEST_BENCH_WIRING 0
#define KB_DATA_DRIVEN_SIM_VALUE 0
#define KB_DATA_EDGE_TYPE "NONE"
#define KB_DATA_FREQ 100000000
#define KB_DATA_HAS_IN 1
#define KB_DATA_HAS_OUT 0
#define KB_DATA_HAS_TRI 0
#define KB_DATA_IRQ -1
#define KB_DATA_IRQ_INTERRUPT_CONTROLLER_ID -1
#define KB_DATA_IRQ_TYPE "NONE"
#define KB_DATA_NAME "/dev/kb_data"
#define KB_DATA_RESET_VALUE 0
#define KB_DATA_SPAN 16
#define KB_DATA_TYPE "altera_avalon_pio"


/*
 * kb_irq configuration
 *
 */

#define ALT_MODULE_CLASS_kb_irq altera_avalon_pio
#define KB_IRQ_BASE 0x1011c0
#define KB_IRQ_BIT_CLEARING_EDGE_REGISTER 0
#define KB_IRQ_BIT_MODIFYING_OUTPUT_REGISTER 0
#define KB_IRQ_CAPTURE 1
#define KB_IRQ_DATA_WIDTH 1
#define KB_IRQ_DO_TEST_BENCH_WIRING 0
#define KB_IRQ_DRIVEN_SIM_VALUE 0
#define KB_IRQ_EDGE_TYPE "RISING"
#define KB_IRQ_FREQ 100000000
#define KB_IRQ_HAS_IN 1
#define KB_IRQ_HAS_OUT 0
#define KB_IRQ_HAS_TRI 0
#define KB_IRQ_IRQ 2
#define KB_IRQ_IRQ_INTERRUPT_CONTROLLER_ID 0
#define KB_IRQ_IRQ_TYPE "EDGE"
#define KB_IRQ_NAME "/dev/kb_irq"
#define KB_IRQ_RESET_VALUE 0
#define KB_IRQ_SPAN 16
#define KB_IRQ_TYPE "altera_avalon_pio"


/*
 * kick_irq configuration
 *
 */

#define ALT_MODULE_CLASS_kick_irq altera_avalon_pio
#define KICK_IRQ_BASE 0x1011b0
#define KICK_IRQ_BIT_CLEARING_EDGE_REGISTER 0
#define KICK_IRQ_BIT_MODIFYING_OUTPUT_REGISTER 0
#define KICK_IRQ_CAPTURE 1
#define KICK_IRQ_DATA_WIDTH 1
#define KICK_IRQ_DO_TEST_BENCH_WIRING 0
#define KICK_IRQ_DRIVEN_SIM_VALUE 0
#define KICK_IRQ_EDGE_TYPE "RISING"
#define KICK_IRQ_FREQ 100000000
#define KICK_IRQ_HAS_IN 1
#define KICK_IRQ_HAS_OUT 0
#define KICK_IRQ_HAS_TRI 0
#define KICK_IRQ_IRQ 3
#define KICK_IRQ_IRQ_INTERRUPT_CONTROLLER_ID 0
#define KICK_IRQ_IRQ_TYPE "EDGE"
#define KICK_IRQ_NAME "/dev/kick_irq"
#define KICK_IRQ_RESET_VALUE 0
#define KICK_IRQ_SPAN 16
#define KICK_IRQ_TYPE "altera_avalon_pio"


/*
 * led_r configuration
 *
 */

#define ALT_MODULE_CLASS_led_r altera_avalon_pio
#define LED_R_BASE 0x101200
#define LED_R_BIT_CLEARING_EDGE_REGISTER 0
#define LED_R_BIT_MODIFYING_OUTPUT_REGISTER 0
#define LED_R_CAPTURE 0
#define LED_R_DATA_WIDTH 18
#define LED_R_DO_TEST_BENCH_WIRING 0
#define LED_R_DRIVEN_SIM_VALUE 0
#define LED_R_EDGE_TYPE "NONE"
#define LED_R_FREQ 100000000
#define LED_R_HAS_IN 0
#define LED_R_HAS_OUT 1
#define LED_R_HAS_TRI 0
#define LED_R_IRQ -1
#define LED_R_IRQ_INTERRUPT_CONTROLLER_ID -1
#define LED_R_IRQ_TYPE "NONE"
#define LED_R_NAME "/dev/led_r"
#define LED_R_RESET_VALUE 0
#define LED_R_SPAN 16
#define LED_R_TYPE "altera_avalon_pio"


/*
 * seq_clap configuration
 *
 */

#define ALT_MODULE_CLASS_seq_clap altera_avalon_pio
#define SEQ_CLAP_BASE 0x101220
#define SEQ_CLAP_BIT_CLEARING_EDGE_REGISTER 0
#define SEQ_CLAP_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SEQ_CLAP_CAPTURE 0
#define SEQ_CLAP_DATA_WIDTH 32
#define SEQ_CLAP_DO_TEST_BENCH_WIRING 0
#define SEQ_CLAP_DRIVEN_SIM_VALUE 0
#define SEQ_CLAP_EDGE_TYPE "NONE"
#define SEQ_CLAP_FREQ 100000000
#define SEQ_CLAP_HAS_IN 0
#define SEQ_CLAP_HAS_OUT 1
#define SEQ_CLAP_HAS_TRI 0
#define SEQ_CLAP_IRQ -1
#define SEQ_CLAP_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SEQ_CLAP_IRQ_TYPE "NONE"
#define SEQ_CLAP_NAME "/dev/seq_clap"
#define SEQ_CLAP_RESET_VALUE 0
#define SEQ_CLAP_SPAN 16
#define SEQ_CLAP_TYPE "altera_avalon_pio"


/*
 * seq_hh configuration
 *
 */

#define ALT_MODULE_CLASS_seq_hh altera_avalon_pio
#define SEQ_HH_BASE 0x1011e0
#define SEQ_HH_BIT_CLEARING_EDGE_REGISTER 0
#define SEQ_HH_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SEQ_HH_CAPTURE 0
#define SEQ_HH_DATA_WIDTH 32
#define SEQ_HH_DO_TEST_BENCH_WIRING 0
#define SEQ_HH_DRIVEN_SIM_VALUE 0
#define SEQ_HH_EDGE_TYPE "NONE"
#define SEQ_HH_FREQ 100000000
#define SEQ_HH_HAS_IN 0
#define SEQ_HH_HAS_OUT 1
#define SEQ_HH_HAS_TRI 0
#define SEQ_HH_IRQ -1
#define SEQ_HH_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SEQ_HH_IRQ_TYPE "NONE"
#define SEQ_HH_NAME "/dev/seq_hh"
#define SEQ_HH_RESET_VALUE 0
#define SEQ_HH_SPAN 16
#define SEQ_HH_TYPE "altera_avalon_pio"


/*
 * seq_kick configuration
 *
 */

#define ALT_MODULE_CLASS_seq_kick altera_avalon_pio
#define SEQ_KICK_BASE 0x101210
#define SEQ_KICK_BIT_CLEARING_EDGE_REGISTER 0
#define SEQ_KICK_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SEQ_KICK_CAPTURE 0
#define SEQ_KICK_DATA_WIDTH 32
#define SEQ_KICK_DO_TEST_BENCH_WIRING 0
#define SEQ_KICK_DRIVEN_SIM_VALUE 0
#define SEQ_KICK_EDGE_TYPE "NONE"
#define SEQ_KICK_FREQ 100000000
#define SEQ_KICK_HAS_IN 0
#define SEQ_KICK_HAS_OUT 1
#define SEQ_KICK_HAS_TRI 0
#define SEQ_KICK_IRQ -1
#define SEQ_KICK_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SEQ_KICK_IRQ_TYPE "NONE"
#define SEQ_KICK_NAME "/dev/seq_kick"
#define SEQ_KICK_RESET_VALUE 0
#define SEQ_KICK_SPAN 16
#define SEQ_KICK_TYPE "altera_avalon_pio"


/*
 * seq_snare configuration
 *
 */

#define ALT_MODULE_CLASS_seq_snare altera_avalon_pio
#define SEQ_SNARE_BASE 0x1011f0
#define SEQ_SNARE_BIT_CLEARING_EDGE_REGISTER 0
#define SEQ_SNARE_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SEQ_SNARE_CAPTURE 0
#define SEQ_SNARE_DATA_WIDTH 32
#define SEQ_SNARE_DO_TEST_BENCH_WIRING 0
#define SEQ_SNARE_DRIVEN_SIM_VALUE 0
#define SEQ_SNARE_EDGE_TYPE "NONE"
#define SEQ_SNARE_FREQ 100000000
#define SEQ_SNARE_HAS_IN 0
#define SEQ_SNARE_HAS_OUT 1
#define SEQ_SNARE_HAS_TRI 0
#define SEQ_SNARE_IRQ -1
#define SEQ_SNARE_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SEQ_SNARE_IRQ_TYPE "NONE"
#define SEQ_SNARE_NAME "/dev/seq_snare"
#define SEQ_SNARE_RESET_VALUE 0
#define SEQ_SNARE_SPAN 16
#define SEQ_SNARE_TYPE "altera_avalon_pio"


/*
 * snare_irq configuration
 *
 */

#define ALT_MODULE_CLASS_snare_irq altera_avalon_pio
#define SNARE_IRQ_BASE 0x1011a0
#define SNARE_IRQ_BIT_CLEARING_EDGE_REGISTER 0
#define SNARE_IRQ_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SNARE_IRQ_CAPTURE 1
#define SNARE_IRQ_DATA_WIDTH 1
#define SNARE_IRQ_DO_TEST_BENCH_WIRING 0
#define SNARE_IRQ_DRIVEN_SIM_VALUE 0
#define SNARE_IRQ_EDGE_TYPE "RISING"
#define SNARE_IRQ_FREQ 100000000
#define SNARE_IRQ_HAS_IN 1
#define SNARE_IRQ_HAS_OUT 0
#define SNARE_IRQ_HAS_TRI 0
#define SNARE_IRQ_IRQ 4
#define SNARE_IRQ_IRQ_INTERRUPT_CONTROLLER_ID 0
#define SNARE_IRQ_IRQ_TYPE "EDGE"
#define SNARE_IRQ_NAME "/dev/snare_irq"
#define SNARE_IRQ_RESET_VALUE 0
#define SNARE_IRQ_SPAN 16
#define SNARE_IRQ_TYPE "altera_avalon_pio"


/*
 * timer_0 configuration
 *
 */

#define ALT_MODULE_CLASS_timer_0 altera_avalon_timer
#define TIMER_0_ALWAYS_RUN 0
#define TIMER_0_BASE 0x101040
#define TIMER_0_COUNTER_SIZE 32
#define TIMER_0_FIXED_PERIOD 0
#define TIMER_0_FREQ 100000000
#define TIMER_0_IRQ 0
#define TIMER_0_IRQ_INTERRUPT_CONTROLLER_ID 0
#define TIMER_0_LOAD_VALUE 99999
#define TIMER_0_MULT 0.0010
#define TIMER_0_NAME "/dev/timer_0"
#define TIMER_0_PERIOD 1
#define TIMER_0_PERIOD_UNITS "ms"
#define TIMER_0_RESET_OUTPUT 0
#define TIMER_0_SNAPSHOT 1
#define TIMER_0_SPAN 32
#define TIMER_0_TICKS_PER_SEC 1000.0
#define TIMER_0_TIMEOUT_PULSE_OUTPUT 0
#define TIMER_0_TYPE "altera_avalon_timer"


/*
 * timer_1 configuration
 *
 */

#define ALT_MODULE_CLASS_timer_1 altera_avalon_timer
#define TIMER_1_ALWAYS_RUN 0
#define TIMER_1_BASE 0x101020
#define TIMER_1_COUNTER_SIZE 32
#define TIMER_1_FIXED_PERIOD 0
#define TIMER_1_FREQ 100000000
#define TIMER_1_IRQ 8
#define TIMER_1_IRQ_INTERRUPT_CONTROLLER_ID 0
#define TIMER_1_LOAD_VALUE 99999
#define TIMER_1_MULT 0.0010
#define TIMER_1_NAME "/dev/timer_1"
#define TIMER_1_PERIOD 1
#define TIMER_1_PERIOD_UNITS "ms"
#define TIMER_1_RESET_OUTPUT 0
#define TIMER_1_SNAPSHOT 1
#define TIMER_1_SPAN 32
#define TIMER_1_TICKS_PER_SEC 1000.0
#define TIMER_1_TIMEOUT_PULSE_OUTPUT 0
#define TIMER_1_TYPE "altera_avalon_timer"


/*
 * wr_address configuration
 *
 */

#define ALT_MODULE_CLASS_wr_address altera_avalon_pio
#define WR_ADDRESS_BASE 0x101230
#define WR_ADDRESS_BIT_CLEARING_EDGE_REGISTER 0
#define WR_ADDRESS_BIT_MODIFYING_OUTPUT_REGISTER 0
#define WR_ADDRESS_CAPTURE 0
#define WR_ADDRESS_DATA_WIDTH 17
#define WR_ADDRESS_DO_TEST_BENCH_WIRING 0
#define WR_ADDRESS_DRIVEN_SIM_VALUE 0
#define WR_ADDRESS_EDGE_TYPE "NONE"
#define WR_ADDRESS_FREQ 100000000
#define WR_ADDRESS_HAS_IN 0
#define WR_ADDRESS_HAS_OUT 1
#define WR_ADDRESS_HAS_TRI 0
#define WR_ADDRESS_IRQ -1
#define WR_ADDRESS_IRQ_INTERRUPT_CONTROLLER_ID -1
#define WR_ADDRESS_IRQ_TYPE "NONE"
#define WR_ADDRESS_NAME "/dev/wr_address"
#define WR_ADDRESS_RESET_VALUE 0
#define WR_ADDRESS_SPAN 16
#define WR_ADDRESS_TYPE "altera_avalon_pio"


/*
 * wr_en configuration
 *
 */

#define ALT_MODULE_CLASS_wr_en altera_avalon_pio
#define WR_EN_BASE 0x101250
#define WR_EN_BIT_CLEARING_EDGE_REGISTER 0
#define WR_EN_BIT_MODIFYING_OUTPUT_REGISTER 0
#define WR_EN_CAPTURE 0
#define WR_EN_DATA_WIDTH 1
#define WR_EN_DO_TEST_BENCH_WIRING 0
#define WR_EN_DRIVEN_SIM_VALUE 0
#define WR_EN_EDGE_TYPE "NONE"
#define WR_EN_FREQ 100000000
#define WR_EN_HAS_IN 0
#define WR_EN_HAS_OUT 1
#define WR_EN_HAS_TRI 0
#define WR_EN_IRQ -1
#define WR_EN_IRQ_INTERRUPT_CONTROLLER_ID -1
#define WR_EN_IRQ_TYPE "NONE"
#define WR_EN_NAME "/dev/wr_en"
#define WR_EN_RESET_VALUE 0
#define WR_EN_SPAN 16
#define WR_EN_TYPE "altera_avalon_pio"

#endif /* __SYSTEM_H_ */
