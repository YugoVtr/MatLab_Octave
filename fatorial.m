function f = fatorial(x)
temp = 0;
if (x == 1)
    temp = 1;
else
    temp = x * fatorial(x-1);  
end
f = temp;