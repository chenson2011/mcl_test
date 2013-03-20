% Chen,Zhiwei 2013.3.19
% Content: partition
function part = classify(adj)
[m,n] = size(adj);
for k =1:m
    part{k} = find(adj(k,:)>0.001);
end
end