function [x, y, Nb, Np] = eqdisk(Nr)
%EQDISK Generates equidistant points inside the unit disk.
%   Nr  [in]  - number of radial circles
%   x,y [out] - coordinates of generated points
%   Np  [out] - total number of generated points
%   Nb  [out] - points on boundary (on r = 1 circle)
 
dR = 1/Nr;
 
x(1) = 0;
y(1) = 0;
 
k = 1;
for r = dR:dR:1
     
    n = round(pi/asin(1/(2*k)));
    disp(pi/asin(1/(2*k))) 
    theta = linspace(0, 2*pi, n+1)'; 
    x = [x; r.*cos(theta(1:n))];
    y = [y; r.*sin(theta(1:n))];
     
    k = k+1;
end
 
Nb = n;
Np = size(x,1);
end