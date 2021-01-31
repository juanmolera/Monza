close all
clear all
clc

load('dif4.mat');
load('circles.mat');
datos=sim('Control');

giro_simu=datos.giro_m(:,2);
xs=datos.xo(:,2);
ys=datos.yo(:,2);
angulo=datos.ang(:,2);

ma=cos(giro_simu);
mb=sin(giro_simu);

anim_giro_pistas;

%**************************************************************************
%***************GRÁFICAS DE LAS CURVAS DE LA SIMULACIÓN********************
%**************************************************************************

fig=figure(1);
for j=1:length(xs)
    plot(mxp(j),myp(j)+0.01,'m*','lineWidth',15)
    
    %*********RECTAS*********
    plot(mxl1(j,:),myl1(j,:),'k','lineWidth',2);
    plot(mxl2(j,:),myl2(j,:),'k','lineWidth',2);
    plot(mxl3(j,:),myl3(j,:),'k','lineWidth',2);
    plot(mxl4(j,:),myl4(j,:),'k','lineWidth',2); 
    %*******PARABOLAS***********
    plot(mx(j,:),my(j,:),'k','lineWidth',2);
    plot(mx1(j,:),my1(j,:),'k','lineWidth',2);
    plot(mx2(j,:),my2(j,:),'k','lineWidth',2);
    plot(mx3(j,:),my3(j,:),'k','lineWidth',2);
    plot(mx4(j,:),my4(j,:),'k','lineWidth',2);
    plot(mx5(j,:),my5(j,:),'k','lineWidth',2);
    plot(mx6(j,:),my6(j,:),'k','lineWidth',2);
    plot(mx7(j,:),my7(j,:),'k','lineWidth',2);
      
    hold off;
    MM = getframe(fig);
    figure(1)
    plot(r1,r2,'k');
    hold on;
    plot(r3,r4,'k');
    hold on;
    axis([-0.25 0.25 -0.25 0.25])
    %title('MONZA')
end

