clc;
clear;
h = 0.05;
a = 2;
b = 3;
N = (b-a)/h;
w = zeros(1,N);
t = zeros(1,N);
t(1) = 0;
w(1) = 1;

for i = 2:N
        w(i) = w(i-1) + h*(1+((t(i-1)-w(i-1))^2));
        t(i) = 0 + i*h;
end

 

plot([0,t],[1,w],'b-')
