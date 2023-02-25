%%%%%%%%%%%%%%%%%%%%%%%%%%%
% @author: Víctor José García Garrido
% Departamento de Física y Matemáticas, UAH
% Cálculo Numérico - Grado en FIE
% Curso Académico 2022-2023
%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%
% Hoja 1 - Ejercicio 10
%%%%%%%%%%%%

% Polinomio ax^2 + bx + c
a = 1; 
b = -(64 + 1e-15);
c = 64e-15; 

p = [a b c];
r = roots(p);

disp(['Las raíces del polinomio son: x1 = ',num2str(r(1),16),' , x2 = ',num2str(r(2),16)]);

% Aplicamos la fórmula de segundo grado
r1 = (- b + sqrt(b^2 - 4*a*c))/(2*a);
r2 = (- b - sqrt(b^2 - 4*a*c))/(2*a);

disp(['Las raíces aplicando la fórmula de segundo grado son: x1 = ',num2str(r1,16),' , x2 = ',num2str(r2,16)]);


