function p0 = pCheck(p)
% pCheck make sure that the p is located in the interval [-1,1] with 2
% periodic
% Input:p - value of p
% Output:p0 - the transfered value
 
% if p<=1&&p>=-1
%     p0 = p;
% else
%     if mod(p,2) == 0
%         p0 = 0;
%     elseif mod(p,1) == 0
%         p0 = mod(p,2);
%     else
%         p0 = 1-mod(p,2);
%     end
% end

p0 = mod(p+1,2)-1;

