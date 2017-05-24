function y = newton_Raphson(n,erro)
    iteracoes = 0 ;
    syms x; 
    f(x) = x^4- 3*x^2;
    derivada(x) = diff(f(x)); 
    while abs(f(n)) > erro && iteracoes < 50
       n = n - double(f(n))/double(derivada(n)); 
       iteracoes = iteracoes + 1 ; 
    end
    y = n ; 
end