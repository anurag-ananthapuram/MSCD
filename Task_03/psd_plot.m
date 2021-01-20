function[X,f] = psd_plot(x,L)
X = fft(x)/L;
PSD = 2*abs(X(1:L/2+1));
f = Fs/2*linspace(0,1,L/2+1);
plot(f,PSD,'r');
axis([0,Fs/2,0,1]);
xlabel('Frequency (Hz)');
ylabel('Amplitude');
end

