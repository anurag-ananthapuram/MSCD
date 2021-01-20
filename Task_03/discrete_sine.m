function [x,t] = discrete_sine(f0,fs,D)
%DISCRETE_SINE Summary of this function goes here
%   Detailed explanation goes here
t = 0:1/fs:D;
x = sin(2*pi*f0*t);
end

