% Chen,Zhiwei   2013.3.18
% content: Inflation

function norm = inflate(grap,r)
[m,n] = size(grap);
M = grap' * grap.^(r-1);
D = diag(M,0);
sum = repmat(D',m,1);
norm = (grap.^r)./sum;
end