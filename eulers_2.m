clc;
clear;
Mc=2^4; %monte carlo samples
T = 1;
N = 2^6;
dt = T/N;

Sw = zeros(1,N+1);
f = @(t,x) t^2 + x^2; % f = inline('t^2 + x^2');
sig = @(t,x) t*x; % sig = inline ('t*x');


t=[0:dt:T];
X = zeros(1,N+1);
X(1)=0;

for k = 1:Mc
for n = 1:N
    %dW = sqrt(dt)*randn;
    X(n+1) = X(n) + dt*f(t(n),X(n)) + sig(t(n),X(n))*sqrt(dt)*randn;
    
    Sw(n+1) = Sw(n+1) + X(n+1);
    
end


plot(t,X);
hold on

%plot(t,X);
%S = Sw/Mc;

end
S = Sw./Mc;
S(1) = X(1);
plot(t, S, 'LineWidth', 2, 'color', 'r');
% Create a legend entry only for the line with width 2
legend('Monte Carlo Paths');
lineHandle = findobj('Type', 'line', 'LineWidth', 2);
legend(lineHandle, 'E(X)');
hold off
xlabel('t')
ylabel('X(t)')
title("dX(t) = (t^2 + X^2)dt + tX(t)dW(t), X(0) = 0")



