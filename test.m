% test
clear all

G3 = [0,1,0,0,0,1,1,0,0,1,0,0;
      1,0,1,0,1,0,0,0,0,0,0,0;
      0,1,0,1,1,0,0,0,0,0,0,0;
      0,0,1,0,0,0,0,1,1,0,1,0;
      0,1,1,0,0,0,1,1,0,0,0,0;
      1,0,0,0,0,0,0,0,0,1,0,0;
      1,0,0,0,1,0,0,0,0,1,0,0;
      0,0,0,1,1,0,0,0,1,0,1,0;
      0,0,0,1,0,0,0,1,0,0,1,1;
      1,0,0,0,0,1,1,0,0,0,0,0;
      0,0,0,1,0,0,0,1,1,0,0,1;
      0,0,0,0,0,0,0,0,1,0,1,0;
      ];
  
  g = graph;
  set_matrix(g,G3);
  distxy(g);
  xy = getxy(g);
  e = 2;
  r = 2;
  
  result = mcl(G3,e,r);
  adj = classify(result);
  
  [m,n] = size(adj);
  for i = 1:n
      a = adj{i};
      sumx = 0;
      sumy = 0;
      r = 0;
      for b = 1:size(a,2)
            sumx = sumx + xy(a(1,b),1);
            sumy = sumy + xy(a(1,b),2);
      end

      cx = sumx/size(a,2);
      cy = sumy/size(a,2);
      
      maxR = 0;
      for b = 1:size(a,2)
            r = sqrt((cx - xy(a(1,b),1))^2 + (cy - xy(a(1,b),2))^2);
            if r > maxR
                maxR = r;
            end
      end
     
      plotcircle(cx,cy,maxR);
      hold on;
  end
  
  ndraw(g);
  
  
  
  
  
  