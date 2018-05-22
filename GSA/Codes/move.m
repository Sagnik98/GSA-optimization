%% to move( relocate) the agents after each iteration

function [X, V] = move(X, V, Acc)
  
%% X         : matrix of population
%% pop_size  : size of population
%% dim       : dimension of test function
%% V         : vector with velocity of agents
%% Acc       : vector with accelaration of agents

   [pop_size,dim] = size(X);

   %% updating velocity

   V = rand(pop_size,dim) .* V + Acc;
   % v(d)(t+1) = rand * v(d)(t) + a(d)(t), for all d

   %% updating position
   
   X = X + V;
   % x(d)(t+1) = x(d)(t) + v(d)(t), for all d
end
