function d = laplace(x)
temp = 0;
%------Condição de parada----------------------------------------
if (length(x) == 1)
    temp = x(1,1);
%------ Expansão da Matriz --------------------------------------
else
    s = length(x); 
    for i = 1:s
        % ------------- aux == menor algebrico -------------------
        aux = x;
        aux(1,:)=[];
        aux(:,i)=[];
        temp = temp + ((-1)^(1+i)) * (x(1,i) * laplace(aux))  ;
    end
end
d = temp;