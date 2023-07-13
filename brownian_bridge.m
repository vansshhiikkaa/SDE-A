clc;
clear;
Mc=2^4; %monte carlo samples
T = 1;
N = 2^6;
dt = T/N;

Sw = zeros(1,N+1);
f = @(t,B) B/(t-1); % f = inline('t^2 + B^2');
sig = @(t,B) 1; % sig = inline ('t*B');


t=[0:dt:T];
B = zeros(1,N+1);
B(1)=0;

for k = 1:Mc
for n = 1:N
    %dW = sqrt(dt)*randn;
    B(n+1) = B(n) + dt*f(t(n),B(n)) + sig(t(n),B(n))*sqrt(dt)*randn;
    
    Sw(n+1) = Sw(n+1) + B(n+1);
    
end


plot(t,B);
hold on

%plot(t,B);
%S = Sw/Mc;

end
S = Sw./Mc;
S(1) = B(1);
plot(t, S, 'LineWidth', 2, 'color', 'r');
% Create a legend entry only for the line with width 2
legend('Monte Carlo Paths');
lineHandle = findobj('Type', 'line', 'LineWidth', 2);
legend(lineHandle, 'E(B)');
hold off
xlabel('t')
ylabel('B(t)')
title("dB(t) = (B/(t-1))dt + dW(t), B(0) = 0")

