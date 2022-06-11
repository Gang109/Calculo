clear
%%%%%%%%%%%%%
%%% Catenaria
%%%%%%%%%%%%%
syms x % definici�n de variable en c�lculo simb�lico
a=17;  % Par�metro de la catenaria
b=0.0059; %Par�metro de la cantenaria
% derivada segunda de g(x)
g2=diff(sqrt(1+(a*b)^2* (sinh(b*x))^2 ),2 ); 
% derivada cuarta de g(x)
g4=diff(sqrt(1+(a*b)^2* (sinh(b*x))^2 ),4);  
% conversi�n de expresiones simb�licas a funciones Matlab
Dg2 = matlabFunction(g2); 
% conversi�n de expresiones simb�licas a funciones Matlab
Dg4 = matlabFunction(g4); 
figure(1)
subplot(1,2,1),
% Representaci�n de la segunda derivada en [-100,100]
fplot(Dg2,[-100,100])  
title('Derivada segunda de g(x)','interpreter','latex','FontSize',12)  
subplot(1,2,2),
% Representaci�n de la derivada cuarta  en [-100,100]
fplot(Dg4,[-100,100])  
title('Derivada cuarta de g(x)','interpreter','latex','FontSize',12)  
%C�lculo de los valores m�ximos tras analizar el dibujo
M2=Dg2(100)
M4=Dg4(100)
% Genera un fichero .eps con la imagen llamado fig40.eps
print -depsc2 -tiff 'fig40'

