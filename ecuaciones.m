function dxdt=ecuaciones(t,x)
a=0.4;
b=0.4;
g=2;
s=0.09;
dxdt=[(a*x(1))-(b*x(1)*x(2));(s*x(1)*x(2))-(g*x(2))];
end
