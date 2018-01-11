set_global_assignment -entity "vga_controller" -library "lib_vga_controller" -name IP_TOOL_NAME "altera_up_avalon_video_vga_controller"
set_global_assignment -entity "vga_controller" -library "lib_vga_controller" -name IP_TOOL_VERSION "13.0"
set_global_assignment -entity "vga_controller" -library "lib_vga_controller" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_vga_controller" -name SPD_FILE [file join $::quartus(sip_path) "vga_controller.spd"]

set_global_assignment -library "lib_vga_controller" -name MISC_FILE [file join $::quartus(sip_path) "vga_controller_sim/altera_up_avalon_video_vga_timing.v"]
set_global_assignment -library "lib_vga_controller" -name MISC_FILE [file join $::quartus(sip_path) "vga_controller_sim/vga_controller.vhd"]
