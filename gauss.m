function b = gauss(A,b)
    n = length(A);
    %-----------------Elimination phase-------------
    for k = 1:n-1
          for i = k+1:n       
                if A(i,k) ~= 0

                    lambda = A(i,k)/A(k,k);
                     A(i,k:n) = A(i,k:n) - lambda*A(k,k:n);
                     b(i)= b(i) - lambda*b(k);
                end
          end
    end
    %--------------Back substitution phase-----------
    for k = n:-1:1	
          b(k) = (b(k) - A(k,k+1:n)*b(k+1:n))/A(k,k);
    end
end
