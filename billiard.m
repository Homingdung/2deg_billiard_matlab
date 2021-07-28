function r = billiard(B,N)
% Calculate r(B)
delta=0.05;
s_0 = linspace(0.5-delta/2,0.5+delta/2,100);
ds = delta/99;
p_0 = linspace(-1,1,100);
dp = 2/99;
[s,p] = meshgrid(s_0,p_0);
Z=[];
for i = 1:length(s_0)
    for j = 1:length(p_0)
        s0 = s(i,j);
        p0 = p(i,j);
        % iterations
        for k = 1:N
            [X,Y]=inverse_mapping_tri(s0,p0,B);
            s0=X;
            p0=Y;
        end
        Z(i,j) = density(X,Y,2,2,delta); 
    end
end

r = ds.*dp.*sum(Z(:));
end