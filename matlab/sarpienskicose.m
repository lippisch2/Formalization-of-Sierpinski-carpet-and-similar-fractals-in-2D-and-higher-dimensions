function sarpienskicose(grid,iter)

x=linspace(0,1,grid);
y=linspace(0,1,grid);
[xgrid,ygrid]=meshgrid(x,y);
count=ones(length(x),length(x));


% % for n=1:iter
% %     for i=1:numel(count)
% %         
% %         if (cos(2*pi*prod(1:2:(2*n-1))*xgrid(i)))+cos(pi/(2*n+1)) <= 0 && ...
% %                  (cos(2*pi*prod(1:2:(2*n-1))*ygrid(i)))+cos(pi/(2*n+1)) <= 0
% %             count(i)=0;
% % 
% %         end
% %     end
% % end
%nterm=( (prod(1:2:(2^(n-1)-1)))^2 * (prod(2:2:(2^n)))^2 ) / ( 2*(prod(2:2:(2^(n-1)))^2)*(prod(2:2:(2^n-1)))^2 );

% 
for n=1:iter
    Nterm=1-(((((prod(1:2:(2^(n)-1)))*(prod(2:2:(2^(n+1)))))/((prod(2:2:2^(n)))*(prod(1:2:(2^(n+1)-1)))))^2*(1/2))^(1/(2^(n+1))));
for i=1:numel(count)
    count(i)= count(i)*sign( 0.5*(sign(cos(2*pi*(3)^(n-1)*xgrid(i))+cos(pi*(Nterm)))+1) + ...
                 0.5*(sign(cos(2*pi*(3)^(n-1)*ygrid(i))+cos(pi*(Nterm)))+1));
           
    %count(i)=0;
%     end
end
disp([num2str(n),'/',num2str(iter)]);
end
 format long
 Area=(numel(count(count==1))/numel(count));
disp(Area*2^(3/2));

% 
% % plot
colormap(flipud(gray));
imagesc(x,y,count);
axis equal
% figure
% [X,Y]=find(count<=0);
% mesh(xgrid(X,Y),ygrid(X,Y),count(X,Y))
