%% to fit the function throughout the population
function [fit] = get_fit(X,f_sel)

%% X        : matrix of population  
%% pop_size     : size of population
%% dim      : dimension of test function
%% f_sel : determines function to be fitted
%% itr      : iterator variable
%% fit      : vector containing fitness values of agent

   [pop_size,dim] = size(X);

   %% evaluating fitness for each agent of population

   for itr = 1 : pop_size
      fit(itr) = fitness(X(itr,:),f_sel,dim);
   end
end
