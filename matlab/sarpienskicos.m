function count=sarpienskicos(k,p,grid,iter)
t=0;
x=linspace(t,t+1,grid);
y=linspace(0,1,grid);
[xgrid,ygrid]=meshgrid(x,y);
count=ones(length(x),length(x));
% count=z;
% 
% % for n=1:iter
% % for i=1:numel(z)
% % if (sin(2*pi*k^(n-1)*xgrid(i))) + cos(pi/2) <= 0 && ...
% %          (sin(2*pi*k^(n-1)*ygrid(i))) + cos(pi/2) <= 0
% % count(i)=0;
% % end
% % end
% % end

% for n=1:iter
%     for i=1:numel(count)
%         
%         if (cos(2*pi*(k)^(n-1)*xgrid(i)))+cos(pi/(p)) <= 0 && ...
%                  (cos(2*pi*(k)^(n-1)*ygrid(i)))+cos(pi/(p)) <= 0
%             count(i)=0;
% 
%         end
%     end
% end
for n=1:iter
    for i=1:numel(count)
        
       count(i)=count(i)*sign(0.5*(sign((cos(2*pi*(k)^(n-1)*xgrid(i)))+cos(pi/(p)))+1) + ...
                 0.5*(sign((cos(2*pi*(k)^(n-1)*ygrid(i)))+cos(pi/(p)))+1) );

    end
end
% 
% % plot
colormap(flipud(gray));
imagesc(x,y,count);
axis equal
hold on
% figure
% [X,Y]=find(count<=0);
% mesh(xgrid(X,Y),ygrid(X,Y),count(X,Y))
