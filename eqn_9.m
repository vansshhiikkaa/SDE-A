clc;
clear;
h = 0.02;
a = 0;
b = 1;
N = (b - a) / h;
w = zeros(1, N);
t = zeros(1, N);
t(1) = a;
w(1) = 0; % Initial value of y

for i = 2:N
    w(i) = w(i-1) + h * (t(i-1)^2 + w(i-1)^2);
    t(i) = a + i * h;
end

plot([a, t], [0, w], 'b-',LineWidth=2)
ylim([0, 0.6]);
xlabel('t')
ylabel('y(t)')
title("y' = t^2 + y^2, y(0) = 0")