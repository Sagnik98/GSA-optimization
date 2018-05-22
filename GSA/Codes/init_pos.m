%% initialize X with random values within the allowed range

function [X] = init_pos(pop_size,dim,up_lim,low_lim,f_sel)

%% X        : matrix of population
%% pop_size : size of population
%% dim      : dimension of test function
%% up_lim   : upper limit of range of test function
%% low_lim  : lower limit of range of test function
%% f_sel : determines function whose limit is considered

	%% initializing with random values

	if f_sel == 17
		X(:,1) = rand(pop_size,1) .* (up_lim(1) -low_lim(1)) + low_lim(1);
		X(:,2) = rand(pop_size,1) .* (up_lim(2) -low_lim(2)) + low_lim(2);
		%% function 17 has two different ranges for two different coordinates x1,x2
	else	
    	X = rand(pop_size,dim) .* (up_lim - low_lim) + low_lim;
	end
end