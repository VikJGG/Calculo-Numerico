%%%%%%%%%%%%%%%%%%%%%%%%%%%
% @author: Víctor José García Garrido
% Departamento de Física y Matemáticas, UAH
% Cálculo Numérico - Grado en FIE
% Curso Académico 2022-2023
%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%
% Hoja 1 - Ejercicio 6
%%%%%%%%%%%%

format long

for n = 0 : 100
    x = 2^(-n);
    diff = (1+x) - 1;
    if diff == 0
        disp(n - 1);
        disp(['El epsilon de la máquina es: ',num2str(2^(-(n-1)),8)]);
        break;
    end
end

disp(['El epsilon de la máquina registrado por MATLAB es: ',num2str(eps,8)]);