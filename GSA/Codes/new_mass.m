%% to find the modified mass after each iteration

function [M]=new_mass(min_sel,fit,pop_size)
  
%% calculate modified mass of agents after each iteration

%% pop_size     : size of population
%% dim      : dimension of test function
%% min_sel  : min_sel = 1 for minimization, else 0
%% fit      : vector with fitness value of all agents
%% best     : best fitness value
%% worst    : worst fitness value
%% m        : vector of mass of  eachagent
%% M        : vector of mass fraction of agents

   %% update the best & worst fitness  

   if min_sel == 1
      best = min(fit);
      worst = max(fit);
   else
      best = max(fit);
      worst = min(fit);
   end

   %% update the mass of agents

   if best == worst
      m = ones(1,pop_size);
   else
      m = (fit - worst) ./ (best - worst);
   end
   total_mass = sum(m);
   M = m ./ total_mass;
end
