%%%%%%%%%%%%%%%%%%%%%%%%%%%
% @author: Víctor José García Garrido
% Departamento de Física y Matemáticas, UAH
% Cálculo Numérico - Grado en FIE
% Curso Académico 2022-2023
%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%
% Hoja 1 - Ejercicio 8
%%%%%%%%%%%%

% Número cuya raíz queremos aproximar
c = 17;

% Número de iteraciones
n = 8;

% Array para guardar las iteraciones
x = zeros(1,n+1);

% Condición Inicial
x0 = c;
x(1) = x0;

for k = 1 : n
    x(k+1) = 0.5 * (x(k) + c/x(k));
end

exact_val = sqrt(c);

abs_error = abs(exact_val - x);
rel_error = abs_error./exact_val;

% imprimios una tabla con los valores
fprintf('n \t x_n \t\t\t\t exact\n');

for i = 1 : n+1
    fprintf('%d \t %-.16f \t %-.16f\n',i-1,x(i),exact_val);
end

fprintf('\n');

fprintf('n \t Error Absoluto \t\t Error relativo\n');
for i = 1 : n+1
    fprintf('%d \t %-.16f \t %-.16f\n',i-1,abs_error(i),rel_error(i));
end





