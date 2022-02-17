% FIRST NAME, LAST NAME = SELEN TUBA, OZDEMİR

clear all
close all

%% Question 1
%% Question 1 (a)
figure(1)
x= [0.1:100];
y= 3.^(-0.5.*x+15);

%Linear-linear
subplot(2,2,1)
plot(x,y)
grid on

%Linear-log
subplot(2,2,2)
semilogx(x,y)
grid on

%Loglinear
subplot(2,2,3)
semilogy(x,y)
grid on 

%Log-log
subplot(2,2,4)
loglog(x,y)
grid on 

%% Question 1 (b)
figure(2)
x = linspace(0.1,pi,24);
approximation = x - (x.^3)/6 + (x.^5)/120;
error = approximation-sin(x);
errorbar(x,sin(x),error)
legend('sin(x)')
title('Error Bars Representing the Error in the sin(x) Approximation')

%% Question 2
%% Question 2 (a)
figure(3)
x= -0.4:0.01:0.4;
y= -0.2:0.005:0.2;

for i=1:81
    for j=1:81
        V(i,j)=(1/(4*pi*8.854*10^(-12)))*(2*10^(-10)/(0.5-x(i)))+(4*10^(-10)/(-0.5-y(i)));
    end
end


surf(x,y,V)

%% Question 2 (b)
figure(4)
[x y]=meshgrid(x, y);
mesh(x,y,V)

%% Question 3
%% Question 3 (a)
figure(5)
t=0:10;
x=t; 
y=(0.5*(t.^2))+10;
boundaryy=2.*x+6;
plot(x,y,'--b',t,boundaryy)
grid on
xlabel('Time (hours)')
ylabel('Path of Drone')
title('Map of drone flight')
legend('Path of Drone','Flying Boundary')


%% Question 3 (b)
figure(6)
d=abs((2.*x+6-y)/sqrt(2^2+1^2));
t=0:10;
plot(t,d)
title('The Distance Between Drone an the Flying Boundary')
xlabel('t')
ylabel('d')

%% HW END