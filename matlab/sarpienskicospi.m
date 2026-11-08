function count=sarpienskicospi(grid,iter)

x=linspace(0,1,grid);
y=linspace(0,1,grid);
[xgrid,ygrid]=meshgrid(x,y);
count=ones(length(x),length(x));


for n=1:iter
    for i=1:numel(count)
        
        count(i)= count(i)*sign(sign(cos(2*pi*prod(1:2:(2*n-1))*xgrid(i))+cos(pi/(2*n+1)))+ ...
                 sign(cos(2*pi*prod(1:2:(2*n-1))*ygrid(i))+cos(pi/(2*n+1)))+2);
%             count(i)=0;

        end
    end




% for n=1:iter
% for i=1:numel(count)
% %     count(i)=count(i)*(sign(0.5*(sign(abs(xgrid(i) - (0.5 + floor(xgrid(i)*(prod(1:2:(2*n - 1)))))/(prod(1:2:(2*n - 1)))) - 1/(2*prod(1:2:(2*n + 1)))) + 1) ...
% %             + 0.5*(sign(abs(ygrid(i) - (0.5 + floor(ygrid(i)*(prod(1:2:(2*n - 1)))))/(prod(1:2:(2*n - 1)))) - 1/(2*prod(1:2:(2*n + 1)))) + 1))); 
%          count(i)=count(i)* (sign ( sign(abs(xgrid(i) - (0.5 + floor(xgrid(i)*(prod(1:2:(2*n - 1)))))/(prod(1:2:(2*n - 1)))) - 1/(2*prod(1:2:(2*n + 1)))) ...
%             + sign(abs(ygrid(i) - (0.5 + floor(ygrid(i)*(prod(1:2:(2*n - 1)))))/(prod(1:2:(2*n - 1)))) - 1/(2*prod(1:2:(2*n + 1))))+2 )); 
% end
% % disp([num2str(n),'/',num2str(iter)]);
% end
% % % % format long
% % % % Area=numel(count(count==1))/numel(count);
% % % % disp(Area*4);

% 
% % plot
colormap(flipud(gray));
imagesc(x,y,count);
axis equal
% figure
% [X,Y]=find(count<=0);
% mesh(xgrid(X,Y),ygrid(X,Y),count(X,Y))
