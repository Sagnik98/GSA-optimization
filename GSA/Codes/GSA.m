%% to implement the gravitational search algorithm

function [best_plot,mean_plot] = GSA(f_sel,min_sel,pop_size,num_itr)

%% f_sel      : determines function to be fitted
%% min_sel    : min_sel = 1 for minimization, else 0  
%% pop_size   : size of population
%% num_itr    : total number of iterations
%% dim        : dimension of test function
%% up_lim     : upper limit of range of test function
%% low_lim    : lower limit of range of test function
%% best_plot  : contains best so far till each iteration
%% mean_plot  : contains mean fitness till each iteration
%% X          : matrix of population
%% V          : vector with velocity of agents
%% Acc        : vector with accelaration of agents
%% global_opt : global optimum of fitness value till now
%% fit        : vector with fitness value of all agents
%% G          : gravitational constant


   
   %% (a) Search space identification
   
   [dim,up_lim,low_lim] = f_range(f_sel);
   
   %% (b) Randomized initialization.
   
   X = init_pos(pop_size,dim,up_lim,low_lim,f_sel);
   
   V = zeros(pop_size,dim);
   best_plot=[];
   mean_plot=[];
   for itr = 1 : num_itr
      X = re_init(X,up_lim,low_lim);
      
      %% (c) Evaluate the fitness for each agent
      
      fit = get_fit(X,f_sel);
      if itr == 1
         if min_sel == 1
            global_opt = min(fit);
         else
            global_opt = max(fit);
         end
      end
      global_opt = get_gopt(fit,global_opt,min_sel);
      best_plot = [ best_plot global_opt];
      mean_plot = [ mean_plot mean(fit)];
      
      %% (d) Update G(t), best(t), worst(t) and M i (t) for i = 1,2,. . .,N.
      
      M = new_mass(min_sel,fit,pop_size);
      G = get_G(itr,num_itr);
      
      %% (e) Calculation of the total force in different directions.
      %% (f) Calculation of acceleration and velocity.
      
      Acc = find_acc(M,X,G,itr,num_itr);
      
      %% (g) Updating agents’ position.
      
      [X,V] = move(X,V,Acc);
      
      fprintf("fun : %d itr : %d\n",f_sel,itr);
      fflush(stdout);
   end
end
