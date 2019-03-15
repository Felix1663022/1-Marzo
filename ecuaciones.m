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
%%ej2
function ej2_exmc(t,x)

tspan=[0 100];
x0=[0; 0; 0; 0;];

[t,x]=ode45(@ej21,tspan,x0);

subplot(4,1,1);
plot(t,x(:,1));

subplot(4,1,2);
plot(t,x(:,2));

subplot(4,1,3);
plot(t,x(:,3));

subplot(4,1,4);
plot(t,x(:,4));

end

function Dx=ej21(t,x)

M=1;m=1;l=5;J=.5; g=9.8; u=1;
Dx=[x(3);
    x(4);
    ((u-m*l*sin(x(2))*x(4))/(m*l*cos(x(2)))+m*g*l*sin(x(2))/(J+m*l))/((M+m)/(m*l*cos(x(2)))-(m*l*cos(x(2)))/(J+m*l));
    ((-m*g*l*sin(x(2)))/(m*l*cos(x(2)))-(u-m*l*sin(x(2))*x(4)^2)/(M+m))/((m*l*cos(x(2))/(M+m))-(J+m*l)/m*l*cos(x(2)))];

end
