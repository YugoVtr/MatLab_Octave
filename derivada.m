function d = derivada(x,h,e)   
    erro = inf; 
    while(erro > e)
        d = (f(x+h)-f(x))/h;
        erro = abs(h)/(2*x^2);
        h = h/2 ; 
    end
end 