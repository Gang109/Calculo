%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% M�todo de la bisecci�n
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% a extremo inferior del intervalo
% b extremo superior del intervalo
% n n�mero de iteraciones
% f funci�n 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
a=1;
b=2;
n=13;
f=@(x) (x^3+4*x^2-10);
RES=[]; %almacenamiento resultados
% Evaluaci�n de la funci�n en los extremos
fa=f(a);
fb=f(b);
%------------------------
for i=1:n
    m=(a+b)/2;
    fm=f(m);
    if fa*fm<0
        b=m;
        fb=fm;
    elseif fa*fm>0
        a=m;
        fa=fm;
    else
        display('ra�z encontrada')
        m
    end
% almacena resultados iteracion
    RES=[RES;[a b m fm]];
end
display(RES)
