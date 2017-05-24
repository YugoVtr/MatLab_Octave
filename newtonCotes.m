function [area,erro] = newtonCotes(a,b,n)
    erro = (b-a)^2/(12*n^2); 
    format long; 
    p = (b-a)/n;        
    b = p;
    area = 0; 
    for i=1:n 
        area = area + (b-a) * ((f(a)+f(b))/2);
        a = b; 
        b = a + p ; 
    end
end