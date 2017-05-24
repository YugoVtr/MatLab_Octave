function y = interpolacaoNewton(x,y,ponto)
    count = length(x);
    %-----Calcular as constantes B ---------------
	df = y ; 
    Bn = df(1); 
    p = 1; %Varia o x 
    for j=count-1:-1:1
        b = 0 ; % Limpar a coluna Bn 
        for i=1:j
            b(i) = (df(i+1)-df(i))/(x(i+p)-x(i));
        end
            df = b;
            Bn(count-j+1) = df(1); 
            p = p+1; 
    end
    %-----Calcular a interpolação no ponto p------
    produtorio(1,1) = 1; 
    for i=2:count
        produtorio(i)=(ponto - x(i-1))*produtorio(i-1);
    end
    y = produtorio*Bn';   
end %Fim da função

