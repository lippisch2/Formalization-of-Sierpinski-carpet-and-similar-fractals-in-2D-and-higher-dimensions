function cantor(grid,iter)

x=linspace(0,1,grid);
count=ones(1,length(x));
Count=count;
for n=1:iter
    for i=1:numel(count)
         count(i)=count(i)*0.5*(sign(cos(2*pi*(3)^(n-1)*x(i))+0.5)+1);
    end
%     hold on
% imagesc(x,zeros(1,length(x))+2*(n-1),count)
Count=[zeros(1,length(x)); Count];
Count=[count; Count];

end
imagesc(x,1:iter+iter-1,Count)
colormap(flipud(gray))



% imagesc(x,zeros(1,length(x))+2*n,count)
% axis equal
% hold on