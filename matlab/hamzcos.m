function count=hamzcos(grid,iter,k,p)
t=0;
x=linspace(t,1+t,grid);
y=linspace(0,1,grid);
[xgrid,ygrid]=meshgrid(x,y);
count=ones(length(x),length(x));
% 
% k=2;p=2; iNTERDASTIN
% for n=1:iter
%     for i=1:numel(count)
%         
%        count(i)=mod(count(i)*((cos(2*pi*(k)^(n-1)*xgrid(i))+cos(pi/(p))) + ...
%                  (cos(2*pi*(k)^(n-1)*ygrid(i))+cos(pi/(p))))%,20);
% 
%     end
% end
for n=1:iter
    for i=1:numel(count)
        
       count(i)=count(i)*sign(sign((cos(2*pi*(k)^(n-1)*xgrid(i))+cos(pi/(p))) + ...
                 (cos(2*pi*(k)^(n-1)*ygrid(i))+cos(pi/(p))))+1);

    end
end
% count=sign(count+1);
% % % for n=1:iter
% % %     for i=1:numel(count)
% % %         
% % %        count(i)=mod(count(i)*(0.5*(sign((cos(2*pi*(k)^(n-1)*xgrid(i)))+cos(pi/(p)))+1) + ...
% % %                  0.5*(sign((cos(2*pi*(k)^(n-1)*ygrid(i)))+cos(pi/(p)))+1)),20);
% % % 
% % %     end
% % % end

% 

    
% 
% % plot
colormap(flipud(gray));
imagesc(x,y,count);
axis equal
hold on
% figure
% [X,Y]=find(count<=0);
% mesh(xgrid(X,Y),ygrid(X,Y),count(X,Y))
