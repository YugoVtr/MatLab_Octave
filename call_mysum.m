function z = call_mysum(x)
%#codegen
z = mysum(x);
end

function y = mysum(x)
coder.inline('never');
if x == 1 
    y = 1;
else
    y = x * mysum(x-1);
end
end