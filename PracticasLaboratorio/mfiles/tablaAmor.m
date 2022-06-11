function T= tablaAmor(C,i,n)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Esta funci�n calcula la tabla de amortizaci�n de una hipoteca  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% (1) N o m b r e:
%       tablaAmor
% (2) D a t o s    d e   e n t r a d a:
%       C capital prestado
%       i interes mensual
%       n numero de mensualidades
% (3) D a t o s    d e   s a l i d a:
%       T es un vector que contiene en la componente j-esima 
%         el dinero pendiente de amortizar
% (4) P r o c e d i m i e n t o   d e   c � l c u l o
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Hip=hipoteca(C,i,n);	% c�lculo de la hipoteca empleando 
                        % la funci�n definida
T=[];
T(1)=C;			        % en el instante inicial se debe todo el 
                        % capital
for j=1:n, 
    T(j+1)=T(j)-Hip+T(j)*i;        
                    % capital pendiente en el periodo j+1 es 
                    % capital en el periodo j menos la hipoteca
                    % m�s lo inter�ses a pagar en dicho periodo j
end
end