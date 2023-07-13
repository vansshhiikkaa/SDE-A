clc;
clear;
Mc=2^6; %monte carlo samples
T = 1;
N = 2^6;
dt = T/N;
SW=0;
Sw = zeros(1,N+1);
W = zeros(1,N);
W(1)=0;
for k = 1:Mc
for n = 2:N+1
    dW = sqrt(dt)*randn;
    W(n) = W(n-1) + dW;
    Sw(n) = Sw(n) + W(n);
    
end
SW = SW + W(N);

t=[0:dt:T];
%plot(t,W);
hold on
%plot(t,Sw);
plot(t,W);
S = Sw/Mc;

end

plot(t,S,LineWidth=2,Color='black');
xlabel('t')
ylabel('W(t)')
hold off



EW = SW/Mc;