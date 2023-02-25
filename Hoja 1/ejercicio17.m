%%%%%%%%%%%%%%%%%%%%%%%%%%%
% @author: Víctor José García Garrido
% Departamento de Física y Matemáticas, UAH
% Cálculo Numérico - Grado en FIE
% Curso Académico 2022-2023
%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%
% Hoja 1 - Ejercicio 17
%%%%%%%%%%%%

alpha = 1/7;

% Número de iteraciones
nit = 100;

% Array para guardar los resultados del algoritmo A1
x = zeros(1,nit+1);
x(1) = 1;

% Aplicamos el algoritmo A1
for k = 2 : nit+1
    x(k) = alpha * x(k-1);
end

% Array para guardar los resultados del algoritmo A2 
y = zeros(1,nit+1);
y(1) = 1;
y(2) = alpha;

% Aplicamos el algoritmo A2
for k = 3 : nit+1
    y(k) = (3+alpha) * y(k-1) - 3 * alpha * y(k-2);
end


% imprimios una tabla con los valores para comparar los algoritmos
fprintf('n \t alpha^n (A1) \t\t\t alpha^n (A2)\n');

for i = 1 : nit+1
    fprintf('%d \t %-.16f \t %-.16f\n',i-1,x(i),y(i));
end

disp('El algoritmo A2 es numéricamente inestable!')
