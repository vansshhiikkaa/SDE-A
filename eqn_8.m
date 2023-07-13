clc;
clear;
h = 0.05;
a = 0;
b = 1;
N = (b-a)/h;
w = zeros(1,N);
t = zeros(1,N);
t(1) = a;
w(1) = 1;

for i = 2:N
        w(i) = w(i-1) + h*(exp(t(i-1)-w(i-1)));
        t(i) = a + i*h;
end

 

plot([0,t],[1,w],'b-')
title("solution of y' = exp(t-y)")