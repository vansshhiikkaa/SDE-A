% storing or creating vectors
x = [1,2,3,4,5];
y = [1,2];
% solving dy/dt = f(t,y(t))   y(0) = yo
clc;
clear;
h = 0.05;
a = 0;
b = 1;
N = (b-a)/h;
w = zeros(1,N);
t = zeros(1,N);
t(1) = 0;
w(1) = 0;

for i = 2:N
        w(i) = w(i-1)+h*(t(i-1)*exp(3*t(i-1))-2*w(i-1));
        t(i) = 0 + i*h;
end

plot([0,t],[0,w],'b-')


