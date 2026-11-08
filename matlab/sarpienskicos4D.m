function count=sarpienskicos4D(k,p,grid,iter)
x=linspace(0,1,grid);
[xgrid,ygrid,zgrid,tgrid]=ndgrid(x,x,x,x);
count=ones(length(x),length(x),length(x),length(x));
for n=1:iter
    for i=1:numel(count)       
         count(i)=count(i)* floor(1/6*(sign((cos(2*pi*(k)^(n-1)*xgrid(i)))+cos(pi/(p))) + ...
                 sign((cos(2*pi*(k)^(n-1)*ygrid(i)))+cos(pi/(p)))+ ...
                 sign((cos(2*pi*(k)^(n-1)*zgrid(i)))+cos(pi/(p)))+ ...
                 sign((cos(2*pi*(k)^(n-1)*tgrid(i)))+cos(pi/(p)))+4));
    end
end

% % end

