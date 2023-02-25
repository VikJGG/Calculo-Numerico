%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% @author: Víctor José García Garrido
% Departamento de Física y Matemáticas, UAH
% Cálculo Numérico - Grado en FIE
% Curso Académico 2022-2023
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

syms x

% Estado del oscilador armónico cuántico a dbujar
n = 3;

% Parámetros del oscilador
m = 1; % masa
w = 1; % velocidad angular de oscilación
hbar = 1; % Constante de Planck reducida

% Consturimos el autoestado
f1 = @(x) qm_harmOsc(n,x,m,w,hbar);

% Lo dibujamos en el intervalo [-6,6]
fplot(f1,[-6,6],'LineWidth',2);

xlabel('$x$','Interpreter','latex','FontSize',24)
ylabel(['$\psi_',num2str(n),'(x)$'],'Interpreter','latex','FontSize',24)
set(gca,'FontSize',24)
title(['Autoestado n = ',num2str(n),' del oscilador armónico cuántico'],'FontSize',22)

axis square
