y0=[11 16 25 12 12 18 26 14 13 20 27 15 15 24 30 15 16 25 32 17]';
y=y0(9:20);
x=[y0(5:16),y0(1:12),ones(12,1)];
z=x\y
for t=21:25
    y0(t)=z(1)*y0(t-4)+z(2)*y0(t-8)+z(3);
end
yhat=y0(21:25)   %提取t=21,…，25时是预测值
