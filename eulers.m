  clc; 
clear;
Mc=2^4; %monte carlo samples
T = 1;
N = 2^6;
dt = T/N;
SW=0;
Sx = zeros(1,N+1);
Sx(1) = 1;
X = zeros(1,N+1);
X(1)=1;
mu = 1;
sigma = 0.1;
for k = 1:Mc
for n = 1:N
    %dW = sqrt(dt)*randn;
    %X(n+1) = X(n) + dt*f(t(n),X(n)) + sigma(t(n),X(n))*sqrt(dt)*randn;
    X(n+1) = X(n) + mu*X(n)*dt + sigma*sqrt(dt)*randn;
    Sx(n+1) = Sx(n+1) + X(n+1);
    
end
%SW = SW + X(N);

t=[0:dt:T];

hold on
plot(t,X);

%plot(t,X);
%S = Sw/Mc;

end

%plot(t,S,LineWidth=4,Color='r');
S = Sx /Mc;
S(1) = X(1);
plot(t,S,LineWidth=2,Color='r');
legend('Monte Carlo Paths');
lineHandle = findobj('Type', 'line', 'LineWidth', 2);
legend(lineHandle, 'E(X)');
xlabel('t')
ylabel('X(t)')
title("dX(t) = X(t)dt + 0.1sqrt(t)dW(t), X(0) = 0")
hold off



