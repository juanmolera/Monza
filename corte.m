function [x_corte,y_corte] = corte(theta,piso,x_tiro,y_tiro,dx_tiro,dy_tiro,flag_caida)
x_corte = 0;
y_corte = 0;
if flag_caida == 1
    switch piso
        case 1
            b = 0.0686;
            d = -0.54;
            [x_corte,y_corte] = parab(theta,x_tiro,y_tiro,dx_tiro,dy_tiro,b,d);
        case 2
            b = 0.03;
            d = -0.54;
            [x_corte,y_corte] = parab(theta,x_tiro,y_tiro,dx_tiro,dy_tiro,b,d);
        case 3
            b = -0.03;
            d = -0.54;
            [x_corte,y_corte] = parab(theta,x_tiro,y_tiro,dx_tiro,dy_tiro,b,d);
        case 4
            b = -0.0686;
            d = -0.54;
            [x_corte,y_corte] = parab(theta,x_tiro,y_tiro,dx_tiro,dy_tiro,b,d);
        case 5
            b = -0.1143;
            d = -0.54;
            [x_corte,y_corte] = parab(theta,x_tiro,y_tiro,dx_tiro,dy_tiro,b,d);
        case 6
            b = -0.16;
            d = -0.54;
            [x_corte,y_corte] = parab(theta,x_tiro,y_tiro,dx_tiro,dy_tiro,b,d);
    end
end
end 