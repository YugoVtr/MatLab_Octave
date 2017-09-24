%   Fun��o que calcula o Grau de Servi�o (ou Bloqueio) 
%   Tm = Tempo Medio de Ocupa��o 
%   y = Taxa de gera��o por unidade de Tempo 
%   N = Numero de Canais 

function [block,erl] = GoS(N,y,Tm)
    erl = Tm*y; 
    sum = 0 ; 
    %Somatorio
    for k=0:N
        sum = sum + ((erl^k)/factorial(k)); 
    end
    block = ((erl^N)/factorial(N))  /sum; 
end