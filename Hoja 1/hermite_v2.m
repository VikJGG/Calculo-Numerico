function pol = hermite_v2(n,x)

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % @author: Víctor José García Garrido
    % Departamento de Física y Matemáticas, UAH
    % Cálculo Numérico - Grado en FIE
    % Curso Académico 2022-2023
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    if n == 0
        pol = ones(1,length(x));
    elseif n == 1
        pol = 2 .* x;
    else       
         pol = 2 .* x .* hermite_v2(n - 1,x) - 2 .* (n - 1) .* hermite_v2(n - 2,x);
    end
end