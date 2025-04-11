% This MATLAB script corresponds to a dataset of the paper submitted to
% IEEE Transactions on Communications:
% "A Close Examination of the Multipath Propagation Stochastic Model for 
%   Communications over Power Lines" 
% by Cortes, Pittolo, Povedano, Cañete, and Tonello. 
% 
% It provides the channels frequency response for three measured channels and
% their fitting parameters (according to Fig.1 in the paper):
% - the one with the highest 𝑁 (number of paths) after the decimation process, 
% - the one with a medium value of 𝑁 
% - the one with minimum value of 𝑁 
%
% The MAT files must be located in the directory .\data
% It also generates 3 figures for each of the channels:
% - Amplitude of the frequency response
% - Phase of the frequency response
% - the normalized RMS value of the fitting error

clear;
close all;

% Filenames that contains the channels and the fitting for them
nom_fic_mpm_ajuste={'MPM_params_channel_N_max','MPM_params_channel_N_med','MPM_params_channel_N_min'};
text={'max','med','min'};

% Parameters
c = 3*1e8;
epsilon_r = 1.5;
v = c/epsilon_r;
N_init=2554; % initial value of N (number of pahts)

ind_fig=1;

for i=1:length(nom_fic_mpm_ajuste)
    disp(['Computing NMRSE for channel with N',text{i}]);
    
    ajuste_mpm=load(['.\data\',nom_fic_mpm_ajuste{i}]);
    M=length(ajuste_mpm.fm);
    fm=ajuste_mpm.fm;
    N=ajuste_mpm.N;

    a0 = ajuste_mpm.a0;
    a1 = ajuste_mpm.a1;        
    gi = ajuste_mpm.gi; %Cell-array with the values for each iteration in the decimation procedure
    di = ajuste_mpm.di; %Cell-array with the values for each iteration in the decimation procedure
    A = ajuste_mpm.A;
    H_measured=ajuste_mpm.H_measured;

    num_iter_diezm=length(gi); 
    NRMSE_dB=zeros(1,num_iter_diezm);
    
    %Generate channel
    progress_bar=textprogressbar(100,'startmsg','Iteration of the decimation process: ');    
    for ind=1:num_iter_diezm 
        progress_bar(100*ind/num_iter_diezm);
                
        P= exp(-(a0+a1*repmat(fm.',1,N(ind))).*repmat(di{ind},M,1)).*exp(-1j*2*pi*repmat(fm.',1,N(ind)).*repmat(di{ind},M,1)/v);
        H_mpm= A(ind)*P*gi{ind};

        num = abs(H_measured-H_mpm).^2;
        denom_1 = 1./abs(H_measured).^2;
        NRMSE_dB(ind) = 10*log10((1/M)*num.'*denom_1);
    end

    disp('');

    % Plot the channels frequency response amplitude and the modelled ones
    figure(ind_fig); ind_fig = ind_fig + 1;
    plot(fm*1e-6,20*log10(abs(H_measured)));grid on;hold on;
    plot(fm*1e-6,20*log10(abs(H_mpm)));grid on;hold on;
    xlabel('Frequency (MHz)');ylabel('|H(f)| (dB)');

    % Plot the channels frequency response phase and the modelled ones
    figure(ind_fig); ind_fig = ind_fig + 1;
    plot(fm*1e-6,unwrap(angle(H_measured)));grid on;hold on;
    plot(fm*1e-6,unwrap(angle(H_mpm)));grid on;
    xlabel('Frequency (MHz)');ylabel('phase[H(f)] (rad)');

    % Plot the normalized RMS value of the fitting error
    figure(ind_fig); ind_fig = ind_fig + 1;
    plot(NRMSE_dB);hold on;grid on;
    xlabel('Number of decimated paths');ylabel('NRMSE (dB)')   
end

