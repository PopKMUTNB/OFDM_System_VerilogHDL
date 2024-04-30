
cp -f C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/IFFT_fft_ii_0_1n64cos.hex ./
cp -f C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/IFFT_fft_ii_0_2n64cos.hex ./
cp -f C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/IFFT_fft_ii_0_1n64sin.hex ./
cp -f C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/IFFT_fft_ii_0_2n64sin.hex ./
cp -f C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/IFFT_fft_ii_0_3n64cos.hex ./
cp -f C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/IFFT_fft_ii_0_3n64sin.hex ./
cp -f C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/NCO/simulation/submodules/NCO_nco_ii_0_sin.hex ./
cp -f C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/NCO/simulation/submodules/NCO_nco_ii_0_cos.hex ./
cp -f C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/FFT_fft_ii_0_1n64sin.hex ./
cp -f C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/FFT_fft_ii_0_2n64cos.hex ./
cp -f C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/FFT_fft_ii_0_2n64sin.hex ./
cp -f C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/FFT_fft_ii_0_3n64cos.hex ./
cp -f C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/FFT_fft_ii_0_3n64sin.hex ./
cp -f C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/FFT_fft_ii_0_1n64cos.hex ./

vhdlan -xlrm          "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/auk_dspip_text_pkg.vhd"                    -work fft_ii_0
vhdlan -xlrm          "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/auk_dspip_math_pkg.vhd"                    -work fft_ii_0
vhdlan -xlrm          "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/auk_dspip_lib_pkg.vhd"                     -work fft_ii_0
vhdlan -xlrm          "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/auk_dspip_roundsat.vhd"                    -work fft_ii_0
vhdlan -xlrm          "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/auk_dspip_avalon_streaming_sink.vhd"       -work fft_ii_0
vhdlan -xlrm          "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/auk_dspip_avalon_streaming_source.vhd"     -work fft_ii_0
vhdlan -xlrm          "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/auk_dspip_avalon_streaming_controller.vhd" -work fft_ii_0
vlogan +v2k -sverilog "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/IFFT_fft_ii_0.sv"                          -work fft_ii_0
vlogan +v2k           "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/IFFT.v"                                                             
vlogan +v2k           "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/NCO/simulation/submodules/NCO_nco_ii_0.v"                             -work nco_ii_0
vlogan +v2k           "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/NCO/simulation/NCO.v"                                                               
vhdlan -xlrm          "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/auk_dspip_text_pkg.vhd"                     -work fft_ii_0
vhdlan -xlrm          "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/auk_dspip_math_pkg.vhd"                     -work fft_ii_0
vhdlan -xlrm          "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/auk_dspip_lib_pkg.vhd"                      -work fft_ii_0
vhdlan -xlrm          "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/auk_dspip_roundsat.vhd"                     -work fft_ii_0
vhdlan -xlrm          "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/auk_dspip_avalon_streaming_sink.vhd"        -work fft_ii_0
vhdlan -xlrm          "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/auk_dspip_avalon_streaming_source.vhd"      -work fft_ii_0
vhdlan -xlrm          "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/auk_dspip_avalon_streaming_controller.vhd"  -work fft_ii_0
vlogan +v2k -sverilog "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/FFT_fft_ii_0.sv"                            -work fft_ii_0
vlogan +v2k           "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/FFT.v"                                                               
vlogan +v2k           "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/PLL_sim/PLL.vo"                                                                     
vlogan +v2k           "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/PLL2_sim/PLL2.vo"                                                                   
