%%%%%%%%%%%%%%%%%%%%%%%%%%%
% @author: Víctor José García Garrido
% Departamento de Física y Matemáticas, UAH
% Cálculo Numérico - Grado en FIE
% Curso Académico 2022-2023
%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%
% Hoja 1 - Ejercicio 19
%%%%%%%%%%%%

% Variables Simbólicas
syms x

% Número de iteraciones a realizar
n = 30;

% Función a integrar
f = @(x,n) x.^n .* exp(x);

% Array para guardar las integrales
int_val = zeros(n+1,1);

% Array para guardar los resultados del esquema iterativo
seq = zeros(n+1,1);
seq(1) = exp(1) - 1;

% Calculamos la sucesión de valores dados por la relación de recurrencia
for k = 2 : n+1
    seq(k) = exp(1) - (k - 1) * seq(k-1);
end

% Calculamos los yn dados por la integral
for k = 0 : n
    int_val(k+1) = int(f(x,k),x,0,1); 
end

% imprimios una tabla con los valores
fprintf('n \t yn (recurrencia) \t\t\t yn (integral)\n');

for i = 1 : n+1
    fprintf('%d \t %-.6f \t\t\t\t %-.6f\n',i-1,seq(i),int_val(i));
end
