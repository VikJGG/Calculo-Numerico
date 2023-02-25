%%%%%%%%%%%%%%%%%%%%%%%%%%%
% @author: Víctor José García Garrido
% Departamento de Física y Matemáticas, UAH
% Cálculo Numérico - Grado en FIE
% Curso Académico 2022-2023
%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%
% Hoja 1 - Ejercicio 11
%%%%%%%%%%%%

% Polinomio ax^2 + bx + c
a = 1; 
b = -(64 + 1e-15);
c = 64e-15; 

p = [a b c];
r = roots(p);

disp(['Las raíces del polinomio son: x1 = ',num2str(r(1),16),' , x2 = ',num2str(r(2),16)]);

% Aplicamos la fórmula de segundo grado modificada para evitar errores de
% cancelación en el cálculo de una de las raíces. Estas expresiones se obtienen
% racionalizando la fórmula de segundo grado, teniendo en cuenta el caso
% adecuado
if b > 0
    r1 = -(2*c)/(b + sqrt(b^2 - 4*a*c));
    r2 = (- b - sqrt(b^2 - 4*a*c))/(2*a);
else
    r1 = (- b + sqrt(b^2 - 4*a*c))/(2*a);
    r2 = -(2*c)/(b - sqrt(b^2 - 4*a*c));
end

disp(['Las raíces aplicando la fórmula de segundo grado modificada son: x1 = ',num2str(r1,16),' , x2 = ',num2str(r2,16)]);


