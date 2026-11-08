function count=sarpienskicos3D(k,p,grid,iter)
% Sierpinski carpet formalization — 3D (Menger sponge) implementation
% Based on "Formalization of Sierpinski's carpet and similar fractals in
% 2D and higher dimensions" (M. F. Hamza Ryad, 2017).
%
% NOTE: this script calls PATCH_3Darray.m to render the 3D voxel array.
% PATCH_3Darray.m is NOT included in this repository. It was written by
% Adam H. Aitkenhead (The Christie NHS Foundation Trust, 2010) and must
% be obtained separately for sarpienskicos3D.m to run.

x=linspace(0,1,grid);
[xgrid,ygrid,zgrid]=meshgrid(x,x,x);
count=ones(length(x),length(x),length(x));
for n=1:iter
    for i=1:numel(count)          
             count(i)=count(i)*sign( -sign((cos(2*pi*(k)^(n-1)*xgrid(i)))+cos(pi/(p))) - ...
                     sign((cos(2*pi*(k)^(n-1)*ygrid(i)))+cos(pi/(p))) - ...
                 sign((cos(2*pi*(k)^(n-1)*zgrid(i)))+cos(pi/(p))) +3);
    end
end
PATCH_3Darray(count)
