function [x_corte,y_corte] = parab(theta,x_tiro,y_tiro,dx_tiro,dy_tiro,b,d)
t = 0;
g = 9.81;

fx1=@(t) x_tiro+dx_tiro*t-0.5*g*sin(theta)*t.^2;
fy1=@(t) y_tiro+dy_tiro*t-0.5*g*cos(theta)*t.^2;

f=@(t) fy1(t)-(b+d*fx1(t).^2);
t_sol = fzero(f, 0.1);
x_corte = x_tiro+dx_tiro*t_sol-0.5*g*sin(theta)*t_sol^2;
y_corte = d*x_corte^2+b;
end