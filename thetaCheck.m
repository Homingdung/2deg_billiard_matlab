function theta0 = thetaCheck(theta)
% The function will make sure the theta is located in the interval
% [0,2*pi] with 2*pi periodic.
% Input: n - multiple of the pi, where theta = n*pi
% Output: theta0 - the transfered value

%theta0 = pi*mod(theta/pi,2);
theta0 = mod(theta,2*pi);







