# IEEE-TComm-2025-MPM-PLC
Dataset for the paper “A Close Examination of the Multipath Propagation Stochastic Model for Communications over Power Lines,” by Cortes, Pittolo, Povedano, Cañete, and Tonello. 
Submitted to IEEE Transactions on Communications for its eventual publication.
-----------------
Authors affiliation: 

José A. Cortés, Irene Povedano and Francisco J. Cañete are with the Communications and Signal Processing Lab, Telecommunication Research Institute (TELMA), Universidad de M´alaga, E.T.S.I.  Telecomunicacion, 29010, Málaga, Spain.
Alberto Pittolo was with the University of Udine, Udine 33100, Italy. 
Andrea M. Tonello is with the Institute of Networked and Embedded Systems, Alpen-Adria-Universit¨at Klagenfurt, Klagenfurt 9020, Austria. 
The work of José A. Cortés, Irene Povedano and Francisco J. Cañete has been partially supported by the Spanish Government under project PID2019-109842RBI00/AEI/10.13039/501100011033 and the University of Málaga under project PAR 15/2023. The work of Alberto Pittolo and Andrea M. Tonello has been partially supported by the University of Udine and the University of Klagenfurt.
--
The MATLAB script "load_channels_github.m" provides the channels frequency response for three measured channels and their fitting parameters (according to Fig.1 in the paper):
 - the one with the highest 𝑁 (number of paths) after the decimation process, 
 - the one with a medium value of 𝑁 
 - the one with minimum value of 𝑁 

It generates also 3 figures for each of the channels:
 - Amplitude of the frequency response
 - Phase of the frequency response
 - the normalized average RMS value of the fitting error

The MAT files must be located in the directory .\data
 
