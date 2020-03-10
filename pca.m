function [m,W]=pca(X)
	# Obtener la media
	m = mean(X);

	# Se obtiene la matriz de covarianza [cov(x, 1)]
	covA = cov(X, 1);

	# Se obitnen los vectores propios de la matriz
	# En values se guardarán los valores propios
	[vects, values] = eig(covA);

	# Nos quedamos con los valores propios que maximizen la varianza
	# Es decir, quellos valores propios másgrandes
	# S contiene los valores proipios ordenados de mayor a menor y I
	# los índices respecto a la matriz anterior
	[S Ind] = sort(diag(values), "descend");

	# Ordeno los vectores propios según el resultado anterior
	W = vects(:, Ind);
end
