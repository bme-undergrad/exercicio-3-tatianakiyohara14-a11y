function [mu] = exercicio3(t, NC)

% t: vetor de tempo com instâncias das medições
% NC: medida do número de células a cada instante t

t_interv = t(1:3);
NC_interv = NC(1:3);

%linearização
b = log(NC_interv); 

%ajuste de curva por regressão linear --> polyfit encontra coeficientes de um polinômio
p = polyfit(t_interv, b, 1); 

% mantenha essas duas linhas finais, subtituindo mu pelo valor que você calculou
calculo_mu = p(1);

mu = calculo_mu;

endfunction
