function y=regula_Falsi(a,b,erro)
    if(f(a) * f(b) > 0)
        y = 'intervalo nao verificavel';
    else
        c = calcular_C(a,b);
        iteracoes = 0 ;
        while abs(f(c)) > erro && iteracoes < 50;
            c = calcular_C(a,b);
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
function y = calcular_C(a,b)
    numerador = (b-a)*f(a); 
    denominador = f(b)-f(a);
    y = a - (numerador / denominador); 
end
