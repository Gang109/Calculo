clear
%%%%%%%%%%%%%
%%% Catenaria
%%%%%%%%%%%%%
syms x % definici�n de variable en c�lculo simb�lico
syms a;  % Par�metro de la catenaria
syms b; %Par�metro de la cantenaria
g2=diff(sqrt(1+(a*b)^2* (sinh(b*x))^2 ),2 ); % derivada segunda de g(x)
g4=diff(sqrt(1+(a*b)^2* (sinh(b*x))^2 ),4);  % derivada cuarta de g(x)

latex(pretty(g2))
latex(pretty(g4))

