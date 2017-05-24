function b = determinante(A)
%--------------------Escalona-----------------------------------
n = length(A); 
permutacao = 1; 
for k = 1:n-1
      for i = k+1:n
            if A(i,k) ~= 0
                %------para denominador == 0 ------------------
                %------permute a linha k com a linha i --------
                if A(k,k)==0 
                    aux = A(k,1:n);
                    A(k,1:n) = A(i,1:n); 
                    A(i,1:n) = aux; 
                    permutacao = permutacao * (-1); 
                end
                %-----------------------------------------------
                lambda = A(i,k)/A(k,k); 
                 A(i,k:n) = A(i,k:n) - lambda*A(k,k:n);
            end
      end
end
b = 1; 
%------------------Multiplica diagonal--------------------------
for k = 1:n
      b = b * A(k,k);
end
b = b * permutacao; 
 