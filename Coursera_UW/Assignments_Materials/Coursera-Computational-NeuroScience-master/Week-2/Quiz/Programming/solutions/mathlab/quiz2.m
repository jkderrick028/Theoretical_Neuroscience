close all; 
%clear all; 
clc;
load('/Users/jkderrick028/Documents/On_Going_Course_Work/Computational_Neuroscience/University_of_Washington/week02/assignment2/c1p8.mat');

sampling_period = 2; % in ms
num_timesteps = 150;

sta = compute_sta(stim, rho, num_timesteps);

time = -sampling_period*(num_timesteps-1):sampling_period:0; %ms

figure(1);
plot(time, sta);
xlabel('Time (ms)');
ylabel('Stimulus');
title('Spike-Triggered Average');
