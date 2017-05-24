function Yint = interpolacaoLagrange(x,y,Xint)
    n = length(x);
    Ln(1,1) = 1; 
    %---------- Calculo dos Ln -----------------
    for i=1:n
        L(i) = 1; 
        for j = 1:n
            if j~= i
                L(i) = L(i)*(Xint - x(j))/(x(i)-x(j)); 
            end
        end
    end
    %------------- Resultado ------------------
    Yint = sum(y.*L); 
end