%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%              M�TODO DE NEWTON
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% s         t�rmino de la sucesi�n Newton  
% tol       par�metro del criterio de paro  
% f         funci�n 
% df        derivada de la fuci�n
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
s=4;                   % punto inicial
tol=10^(-5);           % error 
f=@(x) (3*x^2-exp(x)); % funci�n del ejemplo
df=@(x) (6*x-exp(x));  % derivada
RES=[s];               % almacenamiento resultados
error=realmax;         % inicializa el error a "infinito"
while error>tol
snew=s-f(s)/df(s);  % M�todo de Newton
RES=[RES; snew];    % Almacena resultados
error=abs(snew-s);  % Calcula error
s=snew;             % 
end
display(RES)
