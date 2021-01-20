clc; clear all; close all;

N = 10;
n = -N/2:N/2;

% impulse
i = [zeros(1,N/2),1,zeros(1,N/2)];
% step
s = [zeros(1,N/2),ones(1,N/2+1)];
% sine
fs = 1000;
Ts = 1/fs;
L = 20
t = 0:L;

x = sin(2*pi*100*t*Ts);
% sine cardinal
L2 = 50;
t2 = -L2:L2;
Ts2 = 100e-3;
y = sin(pi*t2*Ts2)./(pi*t2*Ts2)
y(51) = 1;
figure;
stem(n,i);
figure;
stem(n,s);
figure;
stem(t,x);
figure;
stem(t2,y);

