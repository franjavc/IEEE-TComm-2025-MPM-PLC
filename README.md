# IEEE-TComm-2025-MPM-PLC

# Dataset for the paper “A Close Examination of the Multipath Propagation Stochastic Model for Communications over Power Lines,” by Cortes, Pittolo, Povedano, Cañete, and Tonello. 

Submitted to IEEE Transactions on Communications, 2025.
-----------------

** This repository contains datasets and MATLAB scripts to generate some PLC channel responses and curves in the paper.

📄 **“A Close Examination of the Multipath Propagation Stochastic Model for Communications over Power Lines,” submitted to **IEEE Transactions on Communications**, 2025

## Overview

The MATLAB script "load_channels_github.m" provides the frequency responses for three measured channels and their fitting parameters (according to Fig.1 in the paper):
 - the one with the highest 𝑁 (number of paths) after the decimation process, 
 - the one with a medium value of 𝑁 
 - the one with minimum value of 𝑁 

It generates also 3 figures for each of the channels:
 - Amplitude of the frequency response
 - Phase of the frequency response
 - the normalized average RMS value of the fitting error

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
