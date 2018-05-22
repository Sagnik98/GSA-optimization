%% to modify the value of G after each iteration

function G = get_G(cur_itr,num_itr)

%% cur_itr   : current iteration number in calling function
%% num_itr   : total number of iterations
%% G0        : initial value of G
%% alfa      : falling parameter of G
  
   
   G0 = 100;
   alfa = 20;

   %% updating G 

   G = G0 * exp( -1 * alfa * cur_itr / num_itr);
end
