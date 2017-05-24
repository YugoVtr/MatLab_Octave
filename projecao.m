function p = projecao(u,v)
    p = (dot(u,v)/dot(v,v))*v; 
end
