%% initialize X with random values within the allowed range

function [X] = init_pos(pop_size,dim,up_lim,low_lim,f_sel)

%% X        : matrix of population
%% pop_size : size of population
%% dim      : dimension of test function
%% up_lim   : upper limit of range of test function
%% low_lim  : lower limit of range of test function
%% f_sel : determines function whose limit is considered

	%% initializing with random values
	X = rand(pop_size,dim) .* repmat((up_lim - low_lim),pop_size,1) + repmat(low_lim,pop_size,1);
end