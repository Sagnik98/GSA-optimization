%% to get the global optimum after each iteration

function global_opt = get_gopt(fit,global_opt,min_sel)
  
%% global_opt : global optimum of fitness value till now
%% local_opt  : local optimum of fitness value
%% fit        : vector with fitness value of all agents
%% min_sel    : min_sel = 1 for minimization, else 0

   %% selecting the global optimum till now

   if(min_sel == 1)
      local_opt = min(fit);
      if local_opt < global_opt
         global_opt = local_opt;
      end
   else
      local_opt = max(fit);
      if local_opt > global_opt
         global_opt = local_opt;
      end
   end
end
