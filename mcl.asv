% Chen,Zhiwei 2013.3.15 
% Content: MCL
function result = mcl(grap,e,r)
[m,n] = size(grap);
grap = grap + eye(m);
Inf = inflate(grap,1);
change = 1;

while change > 0.001
    Ex = Inf^e;  % expand
    Inf = inflate(Ex,r);
    change = sum(sum((Ex-Inf).^2));
end

result = Inf;

end
