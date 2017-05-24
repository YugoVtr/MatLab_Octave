function y = bissecao(a,b,erro)
    if(f(a) * f(b) > 0)
       y = 'intervalo nao verificavel'; 
    else
        c = (a+b)/2;  
        iteracoes = 0 ;         
        while abs(f(c)) > erro && iteracoes < 50
            c = (a+b)/2;  
            if(f(c)*f(a) < 0) 
                b = c ;
            else
                a = c ;
            end
            iteracoes = iteracoes + 1; 
        end
        y = c;
    end 
end