close all
clear all
clc

%DFIG parameters -> Rotor parameters referred to the stator side

f = 60;                     % Stator frequency (Hz)
Ps = 37300;                   % Rated stator power (W)
%n = 1500;                   % Rated rotational speed (rev/min)
Vs = 460;                   % Rated stator votage (V)
%Is = 1760;                  % Rated stator current (A)
%Tem = 12732;                % Rated torque (N.m)

p = 2;                      % Pole pair 
%u = 1/3;                    % Stator/rotor turns ratio
%Vr = 2070;                  % Rated rotor voltage (non-reached) (V)
%smax = 1/3;                 % Maximun slip
%Vr_stator = (Vr*smax)*u;    % Rated rotor voltage referred to stator  
Rs = 0.087;                % Stator resistance (ohm)
Lsi = 0.302/377;             % Leakage inductance (stator & rotor) (H) Inductacia de fuga
Lri=0.302/377;
Lm = 13.08/377;                % Magnetizing inductace (H)
Rr = 0.228;                % Rotor resistance referred to stator
Ls = Lm + Lsi;              % Stator inductance (H)
Lr = Lm + Lsi;              % Rotor inductance (H)
%Vbus = Vr_stator*sqrt(2);   % DC of bus voltage referred to stator (V)
sigma = 1- Lm^2/(Ls*Lr);    
Fs = Vs*sqrt(2/3)/(2*pi*f); % Stator Flux

J = 1.662;                    % Inertia
D = 0;                   % Damping

%fsw = 4e3;                  % Switching frequency (Hz)
%Ts = 1/fsw/50;               % Sample time (sec) CHECK FREQUENCY 50

% PI regulators
%tau_i = (sigma*Lr)/Rr;
%tau_n = 0.05;
%wni = 100*(1/tau_i);
%wnn = 1/tau_n;

%kp_id = (2*wni*sigma*Lr)-Rr;
%kp_iq = kp_id;
%ki_id = (wni^2)*Lr*sigma;
%ki_iq = ki_id;
%kp_n = (2*wnn*J)/p;
%ki_n = ((wnn^2)*J)/p;
