function [a1,a0] = regrLinearSimples(x,y)
    n = length(x); 
    Sx = sum(x);
    Sy = sum(y);
    Sxy = sum(x.*y);
    Sxx = sum(x.^2);
    
    a1 = (n*Sxy-(Sx*Sy))/(n*Sxx-(Sx^2)); 
    a0 = (Sxx*Sy-Sxy*Sx)/(n*Sxx-(Sx^2)); 
end 