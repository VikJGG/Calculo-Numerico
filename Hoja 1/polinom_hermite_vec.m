function polinomios = polinom_hermite_vec(n,x)  

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % @author: Víctor José García Garrido
    % Departamento de Física y Matemáticas, UAH
    % Cálculo Numérico - Grado en FIE
    % Curso Académico 2022-2023
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    % x ha de ser un vector fila

    polinomios = zeros(n+1,length(x));

    polinomios(1,:) = ones(1,length(x));
    polinomios(2,:) = 2.*x;

    for i = 3 : n+1
        polinomios(i,:) = 2.*x.*polinomios(i-1,:) - 2.*(i-2).*polinomios(i-2,:);
    end

end