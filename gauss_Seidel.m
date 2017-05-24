function y = gauss_Seidel(coeficientes,constantes,erro)
    %----Variaveis de controle-------
    tamanho = length(coeficientes); 
    x_Novo = ones(1,tamanho);
    x_Antigo = zeros(1,tamanho); 
    iteracao = 0; 
    %-----inicio das iteracoes ------
    while not(avaliacao(x_Novo,x_Antigo,erro)) && (iteracao < 300); 
        x_Antigo = x_Novo;        
        for linha = 1:tamanho
            %---------------------------------------------------------------------------------
            equacao = coeficientes(linha,:);
            coef_p_Div = equacao(linha);
            equacao(linha) = [];
            chutes = x_Novo;
            chutes(linha) =[];
            constante = constantes(linha) ;       
            %---------------------------------------------------------------------------------    
            x_Novo(linha) = (constante + (equacao*chutes'*(-1)))/coef_p_Div; 
        end 
        iteracao = iteracao + 1;
    end
    y = x_Novo;
end

function y = avaliacao(x_Novo, x_Antigo, erro)
   y = 1; 
   for i=1:length(x_Novo)
       if (abs((x_Novo(i) - x_Antigo(i)) / x_Novo(i)) > erro)
           y = 0;
           break; 
       end
   end 
end

