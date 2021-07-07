function coords=pointGenerate(K,N,theta,p)
% The function will perform the value for theta and p 
% Input: k - parameter of the system
%        N - number of iterations
%        theta - initial theta
%        p - initial p value
% Output:coords - 1001 coordinates for theta and p

x0 = thetaCheck(theta);
y0 = pCheck(p);
X(1)=x0;
Y(1)=y0;

for i=1:N
    x=x0+y0.*pi;
    y=y0+K.*sin(x0+pi*y0)./pi;
    x0=x;
    y0=y;
    x0=thetaCheck(x0);
    y0=pCheck(y0);
    X=[X,x0];
    Y=[Y,y0];
end
coords=[X;Y];
end




