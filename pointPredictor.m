function coords=pointPredictor(K,theta,p)
% The function will calculate theta1 and p1 based on the initial value of
% them
% Input: k - paratmer of the system
%        theta - initial value of theta
%        p - initial value of p
% Ouput: coords - coordinates for (theta1,p1) after the calculation based
% on this system

x0 = thetaCheck(theta);
y0 = pCheck(p);
x = x0+y0.*pi;
y = y0+K.*sin(x0+pi*y0)./pi;
coords = [thetaCheck(x);pCheck(y)];
end

