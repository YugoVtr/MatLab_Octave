function M = GoS_plot(y,Tm)
    l=length(y);
    s=length(Tm);
    if(l>1 && s==1)
        for i=1:l
            [block(i),erl(i)] = GoS(1,y(i),Tm);
        end
        'Tempo de permanencia fixo'
        'GoS - Erl - y - Tm'
        M(:,1) = block; 
        M(:,2) = erl; 
        M(:,3) = y; 
        M(:,4) = Tm; 
        plot(y,block);
    end
    if(s>1 && l==1)
        for i=1:s
            [block(i),erl(i)] = GoS(1,y,Tm(i));
        end
        'Taxa de geracao fixa'
        'GoS - Erl - y - Tm'
        M(:,1) = block; 
        M(:,2) = erl; 
        M(:,3) = y; 
        M(:,4) = Tm; 
        plot(y,block);
        plot(Tm,block);
    end
end