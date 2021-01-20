clc; clear all; close all;

r = random(10000);
[x,t] = signalgen(1000,1500,3500,10000,1); 
signal = x';

m = zeros(2,1);

signalDelayed=[m;signal];
delay = length(m);
filtered = signal + signalDelayed(1:end-delay);
y = filtered;


h = [-0.0225 -0.0162 0.0910 0.2704 0.3629 0.2704 0.0910 -0.0162 -0.0225];
y = conv(x,h);


Fs = 10e3;
L = length(signal);
% L = 10000;
X = fft(y)/L;

PSD = 2*abs(X(1:L/2+1));
f = Fs/2*linspace(0,1,L/2+1);
figure(1);
subplot(211)
plot(y);
xlabel('Time');
ylabel('Amplitude');
grid;
subplot(212)
plot(f,PSD,'r');
axis([0,Fs/2,0,1]);
xlabel('Frequency (Hz)');
ylabel('Amplitude');
% ylim([0 0.04])
grid;

