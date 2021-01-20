clc; clear all; close all;

F0 = 2e3;
Fs = 10e3;
D = 1;

[x,t] = discrete_sine(F0,Fs, D);
L = length(t);
X = fft(x)/L;

PSD = 2*abs(X(1:L/2+1));
f = Fs/2*linspace(0,1,L/2+1);

plot(f,PSD,'r');
axis([0,Fs/2,0,1]);
xlabel('Frequency (Hz)');
ylabel('Amplitude');