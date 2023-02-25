%%%%%%%%%%%%%%%%%%%%%%%%%%%
% @author: Víctor José García Garrido
% Departamento de Física y Matemáticas, UAH
% Cálculo Numérico - Grado en FIE
% Curso Académico 2022-2023
%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%
% Hoja 1 - Ejercicio 9
%%%%%%%%%%%%

% Valor exacto a aproximar
exact_val = cos(1);

% Número de iteraciones
n = 20;

% Array para guardar las iteraciones
x = zeros(1,n);

% Array con los distitntos pasos de discretización
h = 10.^(-(1:n));

for k = 1 : n
    x(k) = (sin(1+h(k)) - sin(1)) / h(k);
end

% Se puede hacer también de forma vectorizada como
% x = (sin(1+h) - sin(1)) ./ h;

abs_error = abs(exact_val - x);
rel_error = abs_error./exact_val;

% imprimios una tabla con los valores
fprintf('n \t x_n \t\t\t\t exact\n');

for i = 1 : n
    fprintf('%d \t %-.16f \t %-.16f\n',i,x(i),exact_val);
end

fprintf('\n');

fprintf('n \t Error Absoluto \t\t Error relativo\n');
for i = 1 : n
    fprintf('%d \t %-.16f \t %-.16f\n',i,abs_error(i),rel_error(i));
end




