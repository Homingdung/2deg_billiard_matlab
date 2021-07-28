function rho = density(s,p,m,n,delta)

if abs(s-0.5)>delta/2
    rho = 0;
else
    rho = (cos(pi.*(s-0.5)./delta)).^(2.*n).*(cos(pi.*p/2)).^(2.*m);
end
end



