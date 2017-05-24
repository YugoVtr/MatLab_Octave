function b = escalona(A)
    n = length(A);
    %-----------------Elimination phase-------------
    for k = 1:n-1
          for i = k+1:n       
                if A(i,k) ~= 0
                    lambda = A(i,k)/A(k,k);
                     A(i,k:n) = A(i,k:n) - lambda*A(k,k:n);
                end
          end
    end
    b = A; 
end
