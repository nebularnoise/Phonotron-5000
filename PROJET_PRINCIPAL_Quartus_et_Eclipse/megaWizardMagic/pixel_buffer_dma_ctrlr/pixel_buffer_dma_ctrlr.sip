set_global_assignment -entity "pixel_buffer_dma_ctrlr" -library "lib_pixel_buffer_dma_ctrlr" -name IP_TOOL_NAME "altera_up_avalon_video_pixel_buffer_dma"
set_global_assignment -entity "pixel_buffer_dma_ctrlr" -library "lib_pixel_buffer_dma_ctrlr" -name IP_TOOL_VERSION "13.0"
set_global_assignment -entity "pixel_buffer_dma_ctrlr" -library "lib_pixel_buffer_dma_ctrlr" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_pixel_buffer_dma_ctrlr" -name SPD_FILE [file join $::quartus(sip_path) "pixel_buffer_dma_ctrlr.spd"]

set_global_assignment -library "lib_pixel_buffer_dma_ctrlr" -name MISC_FILE [file join $::quartus(sip_path) "pixel_buffer_dma_ctrlr_sim/pixel_buffer_dma_ctrlr.vhd"]
