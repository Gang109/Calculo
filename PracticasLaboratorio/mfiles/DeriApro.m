function y_prima=DeriApro(f,x,h)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% DERIV_APR calcula aproximadamente la derivada de 
% la funci�n f en el punto x tomando como 
% incremento h o en caso de que este par�metro no se especifique 
% se toma el valor h=SQRT(EPS), esto es,  un valor casi 0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% (1) N o m b r e:
%       DeriApro
% (2) D a t o s    d e   e n t r a d a:
%       f funci�n a derivar
%       x punto donde se aproxima la derivada
%       h par�metro para el c�lculo de la derivada
% (3) D a t o s    d e   s a l i d a:
%       y_prima valor aproximado de f'(x)
% (4) P r o c e d i m i e n t o   d e   c � l c u l o
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if nargin < 3       % si el n�mero de argumentos es menor de 3
    h=sqrt(eps);    % se toma un valor de h por defecto
end 
y_prima=(f(x+h)-f(x))/h;
end