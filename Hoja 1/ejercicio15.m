%%%%%%%%%%%%%%%%%%%%%%%%%%%
% @author: Víctor José García Garrido
% Departamento de Física y Matemáticas, UAH
% Cálculo Numérico - Grado en FIE
% Curso Académico 2022-2023
%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%
% Hoja 1 - Ejercicio 15
%%%%%%%%%%%%

% Creamos las dos funciones a comparar
f = @(n) factorial(n);
g = @(n) sqrt(2.*pi.*n) .* (n./exp(1)).^n;

% Array de números naturales
nmax = 16;
n = 1 : 1 : nmax;

% Dibujamos las dos funciones (el eje vertical en escala logarítmica para evitar 
% número muy grandes)
figure(1)
plot(n,log(f(n)),'b','LineWidth',2);
hold on
plot(n,log(g(n)),'r','LineWidth',2);
xlabel('$n$','Interpreter','latex','FontSize',24)
ylabel('$\log y$','Interpreter','latex','FontSize',24)
set(gca,'FontSize',24)
axis square tight

% Dibujamos el cociente entre las dos funciones para estudiar el límite
figure(2)
plot(n,f(n)./g(n),'b','LineWidth',2);
hold on
xlabel('$n$','Interpreter','latex','FontSize',24)
set(gca,'FontSize',24)
line([1 nmax],[1 1],'Color','k','LineWidth',2,'LineStyle','--')
axis([1 nmax 0.95 1.1])
axis square

% imprimios una tabla con algunos valores de las dos funciones
fprintf('n \t f(n) \t\t\t\t g(n)\n');

for i = n
    fprintf('%d \t %-14.2f \t\t\t %-14.2f\n',i,f(i),g(i));
end
