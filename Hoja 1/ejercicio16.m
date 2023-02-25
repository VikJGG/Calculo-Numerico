%%%%%%%%%%%%%%%%%%%%%%%%%%%
% @author: Víctor José García Garrido
% Departamento de Física y Matemáticas, UAH
% Cálculo Numérico - Grado en FIE
% Curso Académico 2022-2023
%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%
% Hoja 1 - Ejercicio 16
%%%%%%%%%%%%

% Definimos las matrices y vectores de términos independientes

% Matrices del sistema
A = [10 7 8 7;7 5 6 5;8 6 10 9;7 5 9 10];
A_mod = [10 7 8.1 7.2;7.08 5.04 6 5;8 5.98 9.89 9;6.99 4.99 9 9.98];

% Vectores de Términos Independientes
b = [32;23;33;31];
b_mod = [32.1;22.9;33.1;30.9];

% Resolvemos el sistema Ax = b
sol = A\b;

fprintf('La solución de Ax = b es:\n');
disp(['x = [',num2str(sol'),']']);

% Resolvemos el sistema modificado A_mod x = b_mod
sol = A_mod\b_mod;

fprintf('La solución del sistema modificado Ax = b es:\n');
disp(['x = [',num2str(sol'),']']);

disp('El sistema está mal condicionado!')
