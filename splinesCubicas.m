function s = splinesCubicas(x,y,z)
    n = length(x); 
    
    for i=2:n
        h(i-1) = x(i) - x(i-1); 
    end
    
    for i=2:n
        delta(i-1) = (y(i)- y(i-1)) / h(i-1);
    end
    
    matriz = zeros(n-2);
    matriz(1,1) = 2*(h(1)+h(2));
    matriz(1,2) = h(2);     
    for i=2:n-2
        matriz(i,i-1) = h(i);         
        matriz(i,i) = 2*(h(i)+h(i+1));
        if(i~=n-2)
            matriz(i,i+1) = h(i+1);   
        end
    end
   
    for i=1:n-2
        diffDelta(i) = 6*(delta(i+1) - delta(i)); 
    end
    
    derivadas = inv(matriz)*diffDelta'; 
    derivadas(n-1) = 0 ; 
    aux = derivadas; 
    derivadas = [0; aux]; 
    
    for i=1:n-1
        a(i) = (derivadas(i+1) - derivadas(i))/(6*h(i)); 
        b(i) = derivadas(i)/2; 
        c(i) = delta(i)- (derivadas(i+1) + 2*derivadas(i))/(6*h(i));       
        d(i) = y(i); 
    end
    
    for i=1:n-1
        s(i) = a(i)*(z(i)-x(i))^3 + b(i)*(z(i)-x(i))^2 + c(i)*(z(i)-x(i)) + d(i);
    end 
end