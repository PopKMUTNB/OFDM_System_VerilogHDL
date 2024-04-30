transcript on
if ![file isdirectory OFDM_iputf_libs] {
	file mkdir OFDM_iputf_libs
}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

###### Libraries for IPUTF cores 
vlib OFDM_iputf_libs/fft_ii_0
vmap fft_ii_0 ./OFDM_iputf_libs/fft_ii_0
vlib OFDM_iputf_libs/nco_ii_0
vmap nco_ii_0 ./OFDM_iputf_libs/nco_ii_0
###### End libraries for IPUTF cores 
###### MIF file copy and HDL compilation commands for IPUTF cores 

file copy -force C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/IFFT_fft_ii_0_1n64cos.hex ./
file copy -force C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/IFFT_fft_ii_0_2n64cos.hex ./
file copy -force C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/IFFT_fft_ii_0_1n64sin.hex ./
file copy -force C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/IFFT_fft_ii_0_2n64sin.hex ./
file copy -force C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/IFFT_fft_ii_0_3n64cos.hex ./
file copy -force C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/IFFT_fft_ii_0_3n64sin.hex ./
file copy -force C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/NCO/simulation/submodules/NCO_nco_ii_0_sin.hex ./
file copy -force C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/NCO/simulation/submodules/NCO_nco_ii_0_cos.hex ./
file copy -force C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/FFT_fft_ii_0_1n64sin.hex ./
file copy -force C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/FFT_fft_ii_0_2n64cos.hex ./
file copy -force C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/FFT_fft_ii_0_2n64sin.hex ./
file copy -force C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/FFT_fft_ii_0_3n64cos.hex ./
file copy -force C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/FFT_fft_ii_0_3n64sin.hex ./
file copy -force C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/FFT_fft_ii_0_1n64cos.hex ./

vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/auk_dspip_text_pkg.vhd"                             -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/auk_dspip_math_pkg.vhd"                             -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/auk_dspip_lib_pkg.vhd"                              -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/auk_dspip_avalon_streaming_block_sink.vhd"   -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/auk_dspip_avalon_streaming_block_source.vhd" -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/auk_dspip_roundsat.vhd"                             -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/auk_dspip_avalon_streaming_sink.vhd"                -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/auk_dspip_avalon_streaming_source.vhd"              -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/auk_dspip_avalon_streaming_controller.vhd"          -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/altera_fft_dual_port_ram.vhd"                -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/altera_fft_dual_port_rom.vhd"                -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/altera_fft_mult_add.vhd"                     -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/altera_fft_single_port_rom.vhd"              -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/auk_fft_pkg.vhd"                             -work fft_ii_0
vlog     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/hyper_pipeline_interface.v"                  -work fft_ii_0
vlog -sv "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/counter_module.sv"                           -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/fft_pack.vhd"                                -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/apn_fft_cmult_cpx.vhd"                       -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/apn_fft_cmult_cpx2.vhd"                      -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/apn_fft_mult_can.vhd"                        -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/apn_fft_mult_cpx.vhd"                        -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_1dp_ram.vhd"                         -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_1tdp_rom.vhd"                        -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_3dp_rom.vhd"                         -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_3pi_mram.vhd"                        -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_3tdp_rom.vhd"                        -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_4dp_ram.vhd"                         -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_6tdp_rom.vhd"                        -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_alt_shift_tdl.vhd"                   -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_bfp_ctrl.vhd"                        -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_bfp_i.vhd"                           -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_bfp_i_1pt.vhd"                       -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_bfp_o.vhd"                           -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_bfp_o_1pt.vhd"                       -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_burst_ctrl.vhd"                      -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_burst_ctrl_de.vhd"                   -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_burst_ctrl_qe.vhd"                   -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_cmult_can.vhd"                       -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_cmult_std.vhd"                       -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_cnt_ctrl.vhd"                        -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_cnt_ctrl_de.vhd"                     -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_cxb_addr.vhd"                        -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_cxb_data.vhd"                        -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_cxb_data_mram.vhd"                   -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_cxb_data_r.vhd"                      -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_dataadgen.vhd"                       -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_data_ram.vhd"                        -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_data_ram_dp.vhd"                     -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_dft_bfp.vhd"                         -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_dft_bfp_sgl.vhd"                     -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_dpi_mram.vhd"                        -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_dp_mram.vhd"                         -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_dualstream.vhd"                      -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_in_write_sgl.vhd"                    -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_lcm_mult.vhd"                        -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_lcm_mult_2m.vhd"                     -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_lpp.vhd"                             -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_lpprdadgen.vhd"                      -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_lpprdadr2gen.vhd"                    -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_lpp_serial.vhd"                      -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_lpp_serial_r2.vhd"                   -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_mult_add.vhd"                        -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_m_k_counter.vhd"                     -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_pround.vhd"                          -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_sglstream.vhd"                       -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_si_de_so_b.vhd"                      -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_si_de_so_bb.vhd"                     -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_si_qe_so_b.vhd"                      -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_si_qe_so_bb.vhd"                     -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_si_se_so_b.vhd"                      -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_si_se_so_bb.vhd"                     -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_si_sose_so_b.vhd"                    -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_tdl.vhd"                             -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_tdl_bit.vhd"                         -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_tdl_bit_rst.vhd"                     -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_tdl_rst.vhd"                         -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_twadgen.vhd"                         -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_twadgen_dual.vhd"                    -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_twadsogen.vhd"                       -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_twadsogen_q.vhd"                     -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_twiddle_ctrl_qe.vhd"                 -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_twid_rom_tdp.vhd"                    -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_unbburst_ctrl.vhd"                   -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_unbburst_ctrl_de.vhd"                -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_unbburst_ctrl_qe.vhd"                -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_unbburst_sose_ctrl.vhd"              -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_wrengen.vhd"                         -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/asj_fft_wrswgen.vhd"                         -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/twid_rom.vhd"                                -work fft_ii_0
vlog     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/mentor/apn_fft_mult_cpx_1825.v"                     -work fft_ii_0
vlog -sv "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/IFFT_fft_ii_0.sv"                                   -work fft_ii_0
vlog     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/IFFT.v"                                                                      
vlog     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/NCO/simulation/submodules/mentor/asj_nco_mob_rw.v"                             -work nco_ii_0
vlog     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/NCO/simulation/submodules/mentor/asj_nco_isdr.v"                               -work nco_ii_0
vlog     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/NCO/simulation/submodules/mentor/asj_nco_apr_dxx.v"                            -work nco_ii_0
vlog     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/NCO/simulation/submodules/mentor/asj_dxx_g.v"                                  -work nco_ii_0
vlog     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/NCO/simulation/submodules/mentor/asj_dxx.v"                                    -work nco_ii_0
vlog     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/NCO/simulation/submodules/mentor/asj_gal.v"                                    -work nco_ii_0
vlog     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/NCO/simulation/submodules/mentor/asj_nco_as_m_cen.v"                           -work nco_ii_0
vlog     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/NCO/simulation/submodules/mentor/asj_altqmcpipe.v"                             -work nco_ii_0
vlog     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/NCO/simulation/submodules/NCO_nco_ii_0.v"                                      -work nco_ii_0
vlog     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/NCO/simulation/NCO.v"                                                                        
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/auk_dspip_text_pkg.vhd"                              -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/auk_dspip_math_pkg.vhd"                              -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/auk_dspip_lib_pkg.vhd"                               -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/auk_dspip_avalon_streaming_block_sink.vhd"    -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/auk_dspip_avalon_streaming_block_source.vhd"  -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/auk_dspip_roundsat.vhd"                              -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/auk_dspip_avalon_streaming_sink.vhd"                 -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/auk_dspip_avalon_streaming_source.vhd"               -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/auk_dspip_avalon_streaming_controller.vhd"           -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/altera_fft_dual_port_ram.vhd"                 -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/altera_fft_dual_port_rom.vhd"                 -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/altera_fft_mult_add.vhd"                      -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/altera_fft_single_port_rom.vhd"               -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/auk_fft_pkg.vhd"                              -work fft_ii_0
vlog     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/hyper_pipeline_interface.v"                   -work fft_ii_0
vlog -sv "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/counter_module.sv"                            -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/fft_pack.vhd"                                 -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/apn_fft_cmult_cpx.vhd"                        -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/apn_fft_cmult_cpx2.vhd"                       -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/apn_fft_mult_can.vhd"                         -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/apn_fft_mult_cpx.vhd"                         -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_1dp_ram.vhd"                          -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_1tdp_rom.vhd"                         -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_3dp_rom.vhd"                          -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_3pi_mram.vhd"                         -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_3tdp_rom.vhd"                         -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_4dp_ram.vhd"                          -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_6tdp_rom.vhd"                         -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_alt_shift_tdl.vhd"                    -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_bfp_ctrl.vhd"                         -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_bfp_i.vhd"                            -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_bfp_i_1pt.vhd"                        -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_bfp_o.vhd"                            -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_bfp_o_1pt.vhd"                        -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_burst_ctrl.vhd"                       -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_burst_ctrl_de.vhd"                    -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_burst_ctrl_qe.vhd"                    -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_cmult_can.vhd"                        -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_cmult_std.vhd"                        -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_cnt_ctrl.vhd"                         -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_cnt_ctrl_de.vhd"                      -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_cxb_addr.vhd"                         -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_cxb_data.vhd"                         -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_cxb_data_mram.vhd"                    -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_cxb_data_r.vhd"                       -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_dataadgen.vhd"                        -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_data_ram.vhd"                         -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_data_ram_dp.vhd"                      -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_dft_bfp.vhd"                          -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_dft_bfp_sgl.vhd"                      -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_dpi_mram.vhd"                         -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_dp_mram.vhd"                          -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_dualstream.vhd"                       -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_in_write_sgl.vhd"                     -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_lcm_mult.vhd"                         -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_lcm_mult_2m.vhd"                      -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_lpp.vhd"                              -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_lpprdadgen.vhd"                       -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_lpprdadr2gen.vhd"                     -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_lpp_serial.vhd"                       -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_lpp_serial_r2.vhd"                    -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_mult_add.vhd"                         -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_m_k_counter.vhd"                      -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_pround.vhd"                           -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_sglstream.vhd"                        -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_si_de_so_b.vhd"                       -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_si_de_so_bb.vhd"                      -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_si_qe_so_b.vhd"                       -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_si_qe_so_bb.vhd"                      -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_si_se_so_b.vhd"                       -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_si_se_so_bb.vhd"                      -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_si_sose_so_b.vhd"                     -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_tdl.vhd"                              -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_tdl_bit.vhd"                          -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_tdl_bit_rst.vhd"                      -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_tdl_rst.vhd"                          -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_twadgen.vhd"                          -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_twadgen_dual.vhd"                     -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_twadsogen.vhd"                        -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_twadsogen_q.vhd"                      -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_twiddle_ctrl_qe.vhd"                  -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_twid_rom_tdp.vhd"                     -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_unbburst_ctrl.vhd"                    -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_unbburst_ctrl_de.vhd"                 -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_unbburst_ctrl_qe.vhd"                 -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_unbburst_sose_ctrl.vhd"               -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_wrengen.vhd"                          -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/asj_fft_wrswgen.vhd"                          -work fft_ii_0
vcom     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/twid_rom.vhd"                                 -work fft_ii_0
vlog     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/mentor/apn_fft_mult_cpx_1825.v"                      -work fft_ii_0
vlog -sv "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/FFT_fft_ii_0.sv"                                     -work fft_ii_0
vlog     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/FFT.v"                                                                        
vlog     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/PLL_sim/PLL.vo"                                                                              
vlog     "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/PLL2_sim/PLL2.vo"                                                                            

vlog -vlog01compat -work work +incdir+C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2 {C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/Complex_Conj.v}
vlog -vlog01compat -work work +incdir+C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2 {C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/testbench.v}
vlog -vlog01compat -work work +incdir+C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2 {C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT_Module.v}
vlog -vlog01compat -work work +incdir+C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2 {C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT_Controller.v}
vlog -vlog01compat -work work +incdir+C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2 {C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/Counter_8bits.v}
vlog -vlog01compat -work work +incdir+C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2 {C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/Reg8bits.v}
vlog -vlog01compat -work work +incdir+C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2 {C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/RegLoadSel.v}
vlog -vlog01compat -work work +incdir+C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2 {C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/load_sel_controller.v}
vlog -vlog01compat -work work +incdir+C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2 {C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/Sorter.v}
vlog -vlog01compat -work work +incdir+C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2 {C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/PLL_tb.v}
vlog -vlog01compat -work work +incdir+C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2 {C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/PLL_Block.v}

vlog -vlog01compat -work work +incdir+C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2 {C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/testbench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -L fft_ii_0 -L nco_ii_0 -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
