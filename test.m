#!/usr/bin/octave -qf
if (nargin != 1)
        printf("Usage: ./test.m <data>\n");
        exit(1);
end

arg_list = argv();
data = arg_list{1};

load(data);
[m, W] = pca(X);

# Cada columna es un vector
w = W(:,3);

wr = reshape(w, 28, 28);
imshow(wr', []);
pause(10);