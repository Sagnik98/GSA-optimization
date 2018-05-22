%% to calculate the accelaration

function [a] = find_acc(M,X,G,cur_itr,num_itr)

%% X         : matrix of population
%% pop_size  : size of population
%% dim       : dimension of test function
%% frac      : fraction of population left on last iteration
%% k_best    : fraction of KBest agent, agents which will have effective force
%% k_num     : number of KBest agent
%% cur_itr   : current iteration number in calling function
%% num_itr   : total number of iterations
%% desc_M    : vector of agents sorted in decreasing order of mass
%% prev_indx : original index of agents before sorting
%% a         : accelaration
%% i,j,d     : iterator variables      
%% ci        : changed index
%% eps       : system defined small value
%% R         : eucledian distance between two agents
%% G         : gravitational constant
%% M         : vector containing mass of each agent

   [pop_size,dim] = size(X);
   
   %% determining number of agents in KBest

   frac = 1 / num_itr ; % as last iteration must contain only 1 element  
   k_best = frac + (1 - cur_itr / num_itr) * (1 - frac);
   kB_num = round(pop_size * k_best);

   %% selecting the KBest agents

   [desc_M prev_indx] = sort( M, 'descend');

   %% calculating the accelaration of an agent due to all other KBest agent

   a = zeros(pop_size,dim);
   for i = 1 : pop_size
      for ci = 1 : kB_num
         j = prev_indx(ci);
         if i ~= j
            R = norm(X(i,:) - X(j,:),2);
            for d = 1 : dim
               a(i,d) = a(i,d) + rand * G * M(j) * ( X(j,d) - X(i,d))/ (R + eps);
            end
         end
      end
   end
end
