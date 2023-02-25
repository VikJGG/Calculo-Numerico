function eigSt = qm_harmOsc(n,x,m,w,hbar)

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % @author: Víctor José García Garrido
    % Departamento de Física y Matemáticas, UAH
    % Cálculo Numérico - Grado en FIE
    % Curso Académico 2022-2023
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Esta función calcula el n-ésimo autoestado del oscilador armónico 
    % cuántico con masa m y frecuencia angular de oscilación w
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    aux = sqrt(m * w / hbar);
    eigSt = sqrt(aux / (2^n * factorial(n) * sqrt(pi))) .* hermite(n,aux.*x) .* exp(-0.5.*(aux.*x).^2);

end

