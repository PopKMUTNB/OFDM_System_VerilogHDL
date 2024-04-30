
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

ncvhdl -v93 "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/auk_dspip_text_pkg.vhd"                    -work fft_ii_0 -cdslib <<fft_ii_0>>
ncvhdl -v93 "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/auk_dspip_math_pkg.vhd"                    -work fft_ii_0 -cdslib <<fft_ii_0>>
ncvhdl -v93 "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/auk_dspip_lib_pkg.vhd"                     -work fft_ii_0 -cdslib <<fft_ii_0>>
ncvhdl -v93 "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/auk_dspip_roundsat.vhd"                    -work fft_ii_0 -cdslib <<fft_ii_0>>
ncvhdl -v93 "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/auk_dspip_avalon_streaming_sink.vhd"       -work fft_ii_0 -cdslib <<fft_ii_0>>
ncvhdl -v93 "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/auk_dspip_avalon_streaming_source.vhd"     -work fft_ii_0 -cdslib <<fft_ii_0>>
ncvhdl -v93 "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/auk_dspip_avalon_streaming_controller.vhd" -work fft_ii_0 -cdslib <<fft_ii_0>>
ncvlog -sv  "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/submodules/IFFT_fft_ii_0.sv"                          -work fft_ii_0 -cdslib <<fft_ii_0>>
ncvlog      "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/IFFT/simulation/IFFT.v"                                                                                  
ncvlog      "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/NCO/simulation/submodules/NCO_nco_ii_0.v"                             -work nco_ii_0 -cdslib <<nco_ii_0>>
ncvlog      "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/NCO/simulation/NCO.v"                                                                                    
ncvhdl -v93 "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/auk_dspip_text_pkg.vhd"                     -work fft_ii_0 -cdslib <<fft_ii_0>>
ncvhdl -v93 "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/auk_dspip_math_pkg.vhd"                     -work fft_ii_0 -cdslib <<fft_ii_0>>
ncvhdl -v93 "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/auk_dspip_lib_pkg.vhd"                      -work fft_ii_0 -cdslib <<fft_ii_0>>
ncvhdl -v93 "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/auk_dspip_roundsat.vhd"                     -work fft_ii_0 -cdslib <<fft_ii_0>>
ncvhdl -v93 "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/auk_dspip_avalon_streaming_sink.vhd"        -work fft_ii_0 -cdslib <<fft_ii_0>>
ncvhdl -v93 "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/auk_dspip_avalon_streaming_source.vhd"      -work fft_ii_0 -cdslib <<fft_ii_0>>
ncvhdl -v93 "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/auk_dspip_avalon_streaming_controller.vhd"  -work fft_ii_0 -cdslib <<fft_ii_0>>
ncvlog -sv  "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/submodules/FFT_fft_ii_0.sv"                            -work fft_ii_0 -cdslib <<fft_ii_0>>
ncvlog      "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/FFT/simulation/FFT.v"                                                                                    
ncvlog      "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/PLL_sim/PLL.vo"                                                                                          
ncvlog      "C:/Users/sirap/OneDrive/Desktop/Pop/Work/OFDM_Project/FPGAV2/OFDMVerilogV2/PLL2_sim/PLL2.vo"                                                                                        
