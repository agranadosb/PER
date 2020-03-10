#!/usr/bin/octave -qf

if (nargin!=5)
printf("Usage: pca+knn-exp.m <trdata> <trlabels> <ks> <%%trper> <%%dvper>\n")
exit(1);
end;

arg_list=argv();
trdata=arg_list{1};
trlabs=arg_list{2};
ks=str2num(arg_list{3});
trper=str2num(arg_list{4});
dvper=str2num(arg_list{5});

load(trdata);
load(trlabs);

N=rows(X);
rand("seed",23); permutation=randperm(N);
X=X(permutation,:); xl=xl(permutation,:);

Ntr=round(trper/100*N);
Ndv=round(dvper/100*N);
Xtr=X(1:Ntr,:); xltr=xl(1:Ntr);
Xdv=X(N-Ndv+1:N,:); xldv=xl(N-Ndv+1:N);

%
% HERE YOUR CODE
% 
# Hay que calcular la matriz de proyección
# y para las dimnensiones que se especifiquen hay que
# calcular sus proyecciones y el error al aplicar el
# algoritmo más cercano, una vez hecho esto se debe
# guardar en un fichero la dimensión y el error que ha habido,
# para poder representarlo luego

# Ariba se obtienen los vectores de entrenamiento y los de test
# que se deberán pasar al algoritmo de k vecinos más cercanos (1 en este caso)

# Bucle que recorra todas las dimensaiones especificadas
#   Obtener la dimensionaldiad de la matriz W
#   Obtener la proyección de los vectores xp(k*1) = W'(k*D)*x(D*1) para
#       xtr y xdv
#   Obtener el error aplicando el algoritmo 1 vecino más cercano
#   Escribirlo en un fichero