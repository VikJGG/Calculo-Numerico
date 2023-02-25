function polinomios = polinom_hermite(n,x)  

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % @author: Víctor José García Garrido
    % Departamento de Física y Matemáticas, UAH
    % Cálculo Numérico - Grado en FIE
    % Curso Académico 2022-2023
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    polinomios(1) = sym(1);
    polinomios(2) = 2*x;

    for i = 3 : n+1
        polinomios(i) = 2*x*polinomios(i-1) - 2*(i-2)*polinomios(i-2);
        polinomios(i) = expand(polinomios(i));
    end

end