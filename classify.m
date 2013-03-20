% Chen,Zhiwei 2013.3.19
% Content: partition
function part = classify(adj)
[m,n] = size(adj);
i = 1;
for k =1:m
    a = find(adj(k,:)>0.001);
    if ~isempty(a)
        part{i} = a;
        i = i+1;
    end
end
end