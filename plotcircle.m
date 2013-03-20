% plot circle
function plotcircle(cx,cy,r)
theta=0:0.1:2*pi;
x=r*cos(theta)+cx;
y=r*sin(theta)+cy;
plot(x,y,'r--')

end