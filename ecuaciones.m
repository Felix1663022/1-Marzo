%% ecuaciones.m
function dxdt=ecuaciones(t,x)
a=0.4;
b=0.4;
g=2;
s=0.09;
dxdt=[(a*x(1))-(b*x(1)*x(2));(s*x(1)*x(2))-(g*x(2))];
end
 %% call_ecuaciones.m
function[t,x]=call_ecuacioness()
tspan=[0 100];
x0=[0;-1;-1]
[t,x]=ode45(@ecuacioness,tspan,x0);
end
%%
[t,x]=call_ecuaciones();
plot(t,x(:,1))
figure
plot(t,x(:,2))
