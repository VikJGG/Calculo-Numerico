%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% @author: Víctor José García Garrido
% Departamento de Física y Matemáticas, UAH
% Cálculo Numérico - Grado en FIE
% Curso Académico 2022-2023
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

syms x;

% Número de polinomios de Hermite a generar
num_pol = 5;
pol = cell(num_pol,1);

% Límites intervalo para dibujar
xi = -2;
xf = 2;
yi = -30;
yf = 30;

% Creamos los polinomios y los guardamos
for n = 0 : num_pol - 1
    pol{n+1} = hermiteH(n,x)
end

figure(1)
hold on

% Dibujamos todos los polinomios
for n = 0 : num_pol - 1
    fplot(@(x) hermiteH(n,x),[xi,xf],'LineWidth',2);
end

% Otra forma de dibujar los polinomios guardados
% fplot(symfun(pol{2},[x]),[xi,xf],'LineWidth',2);
    
grid on
axis square tight
ylim([yi,yf])

xlabel('$x$','Interpreter','latex','FontSize',24)
ylabel('$H_n(x)$','Interpreter','latex','FontSize',24)
set(gca,'FontSize',24)
title('Polinomios de Hermite')

% Test para comparar mi función Hermite con la de Matlab
myres = hermite(4,x);
expand(myres)

matlab_res = hermiteH(4,x);
expand(matlab_res)

figure(2)
hold on

% Probamos la función de Hermite alternativa y la comparamos con la de Matlab
f1 = @(x) hermite_v2(4,x);
f2 = @(x) hermiteH(4,x);

fplot(f1,[xi,xf],'LineWidth',2);
fplot(f2,[xi,xf],'LineWidth',2);

grid on
axis square tight
ylim([yi,yf])

xlabel('$x$','Interpreter','latex','FontSize',24)
ylabel('$H_n(x)$','Interpreter','latex','FontSize',24)
set(gca,'FontSize',24)
title('Polinomios de Hermite')
