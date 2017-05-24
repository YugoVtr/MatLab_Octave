function w = GramSchmidt(u)
    % ===== Ortogonaliza��o =======
    n = length(u); 
    w = u(1,:);
    for i=2:n
        v = u(i,:);
        s = size(w); 
        s = s(1); 
        for j=1:s
            v = v - projecao(v,w(j,:)); 
        end
        w(i,:) = v; 
    end
    %========= Normaliza��o ===========
    for i=1:n
        v = w(i,:);
        w(i,:) = (v/norm(v)); 
    end
end