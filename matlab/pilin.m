function pilin(grid,iter)
xgrid=linspace(0,1,grid);
y=zeros(1,length(xgrid));
corr=zeros(1,length(xgrid));
% for n=1:iter
% for i=1:length(xgrid)
% y(i)=y(i)+ 0.5*(-sign(cos(2*pi*prod(1:2:(2*n-1))*xgrid(i))+cos(pi/(2*n+1)))+1) - (1/prod(1:2:(2*n-1)))* (-sign(cos(2*pi*prod(1:2:(2*n-3))*xgrid(i))+cos(pi/(2*n+1)))+1) *sign(n-1);% ...
% end
% end

for n=1:iter
for i=1:length(xgrid)
y(i)=y(i)+ 0.5*(-sign(cos(2*pi*3^(n-1)*xgrid(i))+cos(pi/3))+1)-1/3*sign(y(i));

end
end
plot(xgrid,y)