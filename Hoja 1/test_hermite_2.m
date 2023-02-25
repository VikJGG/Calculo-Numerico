%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% @author: Víctor José García Garrido
% Departamento de Física y Matemáticas, UAH
% Cálculo Numérico - Grado en FIE
% Curso Académico 2022-2023
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

syms x

% Grado máximo del polinomio a calcular
n = 5;

% Creamos los polinomios de Hermite
polinomios = polinom_hermite(n,x)

% Límites intervalo para dibujar
xi = -2.5;
xf = 2.5;
yi = -15;
yf = 15;

for i = 1 : length(polinomios)
    hold on 
    fplot(polinomios(i),[xi xf],'LineWidth',3);
    set(gca,'FontSize',24);
    xlabel('$x$','FontSize',24,'Rotation',0,'Interpreter','latex');
    ylabel('$y$','FontSize',24,'Rotation',0,'Interpreter','latex');
end

grid on
axis normal tight
ylim([yi,yf])
title(['Polinomios de Hermite Hn(x) hasta grado n = ',num2str(n)]);