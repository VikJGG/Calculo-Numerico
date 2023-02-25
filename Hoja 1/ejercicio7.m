%%%%%%%%%%%%%%%%%%%%%%%%%%%
% @author: Víctor José García Garrido
% Departamento de Física y Matemáticas, UAH
% Cálculo Numérico - Grado en FIE
% Curso Académico 2022-2023
%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%
% Hoja 1 - Ejercicio 7
%%%%%%%%%%%%

% Número áureo
phi = (1+sqrt(5))/2;

% Número de términos a calcular
nit = 100;

% Array para guardar los resultados del algoritmo A1
x = zeros(1,nit);
x(1) = 0;
x(2) = 1;

% Aplicamos el algoritmo A1
for k = 3 : nit
    x(k) = x(k-1) + x(k-2);
end

% Array para guardar los resultados del algoritmo A2
y = zeros(1,nit);

% Aplicamos el algoritmo A2
for k = 0 : nit-1
    y(k+1) = (1/sqrt(5)) * (phi^k - (1-phi)^k);
end

% imprimios una tabla con los valores para comparar los algoritmos
fprintf('n \t Fn (A1) \t\t\t Fn (A2)\n');

for i = 1 : nit
    fprintf('%d \t %-.6f \t\t\t %-.6f\n',i-1,x(i),y(i));
end

disp('El algoritmo A2 es numéricamente inestable!')
