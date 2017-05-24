function v = simpson(a,b,n)
    h = (b-a)/n;
    x = a:h:b;
    
    for i = 1:length(x)
        fx(i) = f(x(i));
    end
    
    v= fx(1) + fx(length(x));
    
    for i= 2:length(x)-1
        if mod(i,2) == 0
            v = v + 4*fx(i); 
        else
            v = v + 2*fx(i);   
        end 
    end
    v = h/3*v;
end