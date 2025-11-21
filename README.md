# IEEE-TComm-2025-MPM-PLC

# Dataset for the paper “A Close Examination of the Multipath Propagation Stochastic Model for Communications over Power Lines,” 

Published in IEEE Transactions on Communications, 05 june 2025.
--

Authors: José A. Cortés, Alberto Pittolo, Irene Povedano, Francisco J. Cañete and Andrea M. Tonello. 

## Overview

This repository contains datasets and MATLAB scripts to generate some PLC channel responses and curves in the paper:

📄 J. A. Cortés, A. Pittolo, I. Povedano, F. J. Cañete and A. M. Tonello, "A Close Examination of the Multipath Propagation Stochastic Model for Communications Over Power Lines," in _IEEE Transactions on Communications_, vol. 73, no. 11, pp. 10391-10404, Nov. 2025.

📌 DOI: https://doi.org/10.1109/TCOMM.2025.3576942

The MATLAB script "load_channels_github.m" provides the frequency responses for three measured channels and their fitting parameters (according to Fig.1 in the paper):
 - the one with the highest $N$ (number of paths) after the decimation process, 
 - the one with a medium value of $N$ 
 - the one with minimum value of $N$ 

In addition to the frequency responses, for each of the channels, their multipath model parameters are provided:
- $a_0$ and $a_1$, attenuation coefficients
- $A$, normalization coefficient
- $N$, number of dominant paths 
- $g_i$, path gains
- $d_i$, path lenghts.

It also generates 3 figures for each of the channels:
 - Amplitude of the frequency response
 - Phase of the frequency response
 - the normalized root mean square value of the fitting error (NRMSE in dB)

📜 These materials are provided for reproducibility of the results in our paper. Readers are encouraged to utilize them under the terms of the journal and this respository's license.

## Requirements

The .mat files must be located in a directory .\data

To run the script, it is required:

✔️ MATLAB R2022b (or later)

## Usage Instructions

1. The repository can be cloned or downloaded as a zip
2. Open MATLAB 
3. Add the .m files and .mat files in \data to the workspace's path
4. Run the script **"load_channels_github.m"**
5. After a while, the curves should be plotted
