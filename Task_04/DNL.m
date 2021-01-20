clear all; close all;
load('ADC_NONIDEAL.mat');



size = length(ADC_4B);
w_avg = (ADC_4B(size,1) - ADC_4B(1,1))/(size - 1);
d = 0;
for n = 1:size-1    
    d(n) = ((ADC_4B(n+1,1) - ADC_4B(n,1))  - w_avg)/w_avg;    
end

c(1) = 0;
for m = 1:size-1
    c(m+1) = c(m) + d(m);
end
c(size) = 0;


figure(1);
stairs([0,ADC_4B(1:end,1)',1.8],[0,ADC_4B(1:end,2)',ADC_4B(end)]);


figure(2);
subplot(211);
grid;
stem(d);
title('DNL');
subplot(212);
stem(c);
grid;
title('INL');

