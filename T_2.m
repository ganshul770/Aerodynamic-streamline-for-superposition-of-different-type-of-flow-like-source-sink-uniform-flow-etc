clear all;
close all;
clc;

%%
%streamline

a=0.75;
u=6;
gama=15;
p=linspace(-2,2);
q=linspace(-2,2);
[X,Y]=meshgrid(p,q);
prompt='enter the number of sink = ';
n=input(prompt);
A=0;
for i=1:n
    A=A+(1/n)*atan(Y./(X-i*(2*a/n)));
end
F=u*Y+(gama/(2*pi))*(atan(Y./(X))-A);
figure(1);
contour(X,Y,F,101);
colorbar;
xlabel('--- x --->');
ylabel('--- y --->');