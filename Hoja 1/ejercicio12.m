%%%%%%%%%%%%%%%%%%%%%%%%%%%
% @author: Víctor José García Garrido
% Departamento de Física y Matemáticas, UAH
% Cálculo Numérico - Grado en FIE
% Curso Académico 2022-2023
%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%
% Hoja 1 - Ejercicio 12
%%%%%%%%%%%%

% Función sin simplificar
f = @(x) (x.^4 - x.^3 - x + 1) ./ (x-1).^2;

% Función Simplificada
g = @(x) x.^2 + x + 1;

% Número de casos 
n = 20;

x = 1 + (0.25).^(1:n);

fvals = f(x);
gvals = g(x);

% imprimios una tabla con los valores
fprintf('n \t x \t\t\t\t f(x) \t\t\t\t g(x)\n');

for i = 1 : n
    fprintf('%d \t %-.16f \t %-.16f \t %-.16f\n',i,x(i),fvals(i),gvals(i));
end
