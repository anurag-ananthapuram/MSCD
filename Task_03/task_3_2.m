clc; clear all; close all;

[x1,t1] = discrete_sine(1e3,20e3,5e-3);
[x2,t2] = discrete_sine(1e3,1.5e3,5e-3);
figure;
subplot(211)
stem(t1,x1);
subplot(212);
stem(t2,x2);