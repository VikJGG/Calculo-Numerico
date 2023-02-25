function [p_alpha,coefs_q] = horner_eval(coefs_p,alpha)
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % @author: Víctor José García Garrido
    % Departamento de Física y Matemáticas, UAH
    % Cálculo Numérico - Grado en FIE
    % Curso Académico 2022-2023
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Esta función evalúa un polinomio de la forma:
    %
    % p(x) = a_1 x^n + a_2 * x^{n-1} + ... + a_n x + a_{n+1}
    %
    % donde coefs_p = [a_1 a_2 ... a_{n+1}] en el punto x = alpha 
    % usando el algoritmo de Horner. Además del valor p_alpha = p(alpha), 
    % la función devuelve los coeficientes del polinomio:
    %
    % q(x) = b_1 x^{n-1} + b_2 * x^{n-2} + ... + b_{n-1} x + b_{n}
    %
    % donde coefs_q = [b_1 b_2 ... b_{n}] que cumple que:
    %
    % p(x) = q(x) * (x - alpha) + p(alpha)
    %
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    if length(coefs_p) == 1
        % Polinomio Constante
        p_alpha = coefs_p(1);
        coefs_q = [];
    else
        aux = zeros(1,length(coefs_p));
        aux(1) = coefs_p(1);
        
        for k = 2 : length(coefs_p)
            aux(k) = alpha * aux(k - 1) + coefs_p(k);
        end
        
        p_alpha = aux(end);
        coefs_q = aux(1 : end - 1);        
    end
        
end

