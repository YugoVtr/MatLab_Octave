function y = secante(x1,erro)
    x0 = x1+0.0001; 
    iteracoes = 0 ; 
    while abs(f(x1)) > erro && iteracoes < 50
       x1 = x1 - (x1-x0)/(f(x1)-f(x0))*f(x1); 
       x0 = x1+0.0001;
       iteracoes = iteracoes + 1 ; 
    end
    y = x1 ; 
end