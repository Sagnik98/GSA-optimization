%% after calculating new position in some iteration, if the range -
%% - of values in X exceeds the allowed range, reinitialize it.

function [X] = re_init(X,up_lim,low_lim)

%% X        : matrix of population
%% pop_size : size of population
%% dim      : dimension of test function
%% up_lim   : upper limit of range of test function
%% low_lim  : lower limit of range of test function
%% cross_ll : vector having 1 in postions, which have crossed lower limit
%% cross_ll : vector having 1 in postions, which have crossed upper limit
%% cross    : vector having 1 in postions, which have crossed both upper and lower limit

   [pop_size,dim] = size(X);

   %% re - initializing out of bounds 

   for i = 1 : pop_size,
   		cross_ul = X(i,:) > up_lim;
      	cross_ll = X(i,:) < low_lim;
    	cross = cross_ul + cross_ll;
    	X(i,:) = X(i,:) .* (~cross) + (rand(1,dim) .* (up_lim - low_lim) + low_lim) .* cross;
    	% all positions in vector that has crossed any limit is set to 0, and a random number -
    	% - within the limit is added to that position
   	end
end
