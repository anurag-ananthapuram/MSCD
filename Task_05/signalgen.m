function [x,t] = signalgen(f1,f2,f3,fs,D)
%DISCRETE_SINE Summary of this function goes here
%   Detailed explanation goes here
t = 0:1/fs:D;
x = 0.3*sin(2*pi*f1*t) + 0.25*sin(2*pi*f2*t) + 0.15*sin(2*pi*f3*t);
end

