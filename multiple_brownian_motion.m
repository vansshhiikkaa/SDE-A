Mc = 2^2;
for k=1:Mc
    T = 1;
    N = 1000;
    dt = T/N;
dW = zeros(1,N);
W = zeros(1,N); 
dW(1) = sqrt(dt)*randn;
W(1) = dW(1);
for j = 2:N
dW(j) = sqrt(dt)*randn; 
W(j) = W(j-1) + dW(j);
end

plot([0:dt:T],[0,W],'r-')
hold on;
end