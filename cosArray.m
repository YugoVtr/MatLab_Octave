function r = cosArray(x,y,t)
    %Para obter em arccos t==1
    %Para obter em rad t==2
    %Para obter em graus t==3 
    
    if(t==1)
        r = dot(x,y)/(norm(x)*norm(y));%Calcula o arco cos
    elseif(t==2)
        r = acos(dot(x,y)/(norm(x)*norm(y)));  %Converte em radianos
    else
        r = (acos(dot(x,y)/(norm(x)*norm(y))))/(pi/180); %Converte em grau
    end
end