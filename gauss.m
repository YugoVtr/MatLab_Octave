function b = gauss(A,b)
    n = length(A);
    %-----------------Elimination phase-------------
    for k = 1:n-1
          for i = k+1:n
                if(A(k,k)==0)
                    temp = A(k,:); 
                    A(k,:) = A(i,:); 
                    A(i,:) = temp;
                    temp = b(k); 
                    b(k) = b(i); 
                    b(i) = temp;
                end
                if A(i,k) ~= 0
                    lambda = A(i,k)/A(k,k);
                    [N,D] = rat(lambda);
                    strcat(num2str(N),'/',num2str(D))
                    A(i,k:n) = A(i,k:n) - lambda*A(k,k:n)
                    %rats(A)
                    b(i)= b(i) - lambda*b(k)
                    %rats(b)
                end
          end
    end
    %--------------Back substitution phase-----------
    for k = n:-1:1	
          b(k) = (b(k) - A(k,k+1:n)*b(k+1:n))/A(k,k);
    end
end
