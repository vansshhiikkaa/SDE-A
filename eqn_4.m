clc;
clear;
h = 0.02;
a = 0;
b = 1;
N = (b - a) / h;
w = zeros(1, N);
t = zeros(1, N);
t(1) = a;
w(1) = 1; % Initial value of y

for i = 2:N
    w(i) = w(i-1) + h * (cos(2*t(i-1)) + sin(3*t(i-1)));
    t(i) = a + i * h;
end

plot([a, t], [1, w], 'b-')
xlabel('t')
ylabel('y(t)')
title("Solution of y' = cos(2t) + sin(3t), y(0) = 1")
