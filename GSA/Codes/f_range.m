%% function  to provide with range & dimensions of functions

function [dim,up_lim,low_lim]=f_range(f_sel)

%% f_sel    : determines function to be fitted
%% dim      : dimension of test function
%% up_lim   : upper limit of range of test function
%% low_lim  : lower limit of range of test function

dim=30;
if f_sel==1
    low_lim=-100 * ones(1,dim); up_lim= 100 * ones(1,dim);
end

if f_sel==2
    low_lim=-10 * ones(1,dim);up_lim=10 * ones(1,dim);
end

if f_sel==3
    low_lim=-100 * ones(1,dim) ;up_lim=100 * ones(1,dim);
end

if f_sel==4
    low_lim=-100 * ones(1,dim);up_lim=100 * ones(1,dim);
end

if f_sel==5
    low_lim=-30 * ones(1,dim);up_lim=30 * ones(1,dim);
end

if f_sel==6
    low_lim=-100 * ones(1,dim);up_lim=100 * ones(1,dim);
end

if f_sel==7
    low_lim=-1.28 * ones(1,dim);up_lim=1.28;
end

if f_sel==8
    low_lim=-500 * ones(1,dim) ;up_lim=500 * ones(1,dim);
end

if f_sel==9
    low_lim=-5.12 * ones(1,dim);up_lim=5.12 * ones(1,dim);
end

if f_sel==10
    low_lim=-32 * ones(1,dim);up_lim=32 * ones(1,dim);
end

if f_sel==11
    low_lim=-600 * ones(1,dim);up_lim=600 * ones(1,dim);
end

if f_sel==12
    low_lim=-50 * ones(1,dim);up_lim=50 * ones(1,dim);
end

if f_sel==13
    low_lim=-50 * ones(1,dim);up_lim=50 * ones(1,dim);
end

if f_sel==14
	dim=2;
    low_lim=-65.536 * ones(1,dim);up_lim=65.536 * ones(1,dim);
end

if f_sel==15
	dim=4;
    low_lim=-5 * ones(1,dim);up_lim=5 * ones(1,dim);
end

if f_sel==16
	dim=2;
    low_lim=-5 * ones(1,dim);up_lim=5 * ones(1,dim);
end

if f_sel==17
	dim=2;
    low_lim=[-5 0];up_lim=[10 15];
end

if f_sel==18
	dim=2;
    low_lim=-2 * ones(1,dim);up_lim=2 * ones(1,dim);
end

if f_sel==19
	dim=3;
    low_lim=0 * ones(1,dim);up_lim=1 * ones(1,dim);
end

if f_sel==20
	dim=6;
    low_lim=0 * ones(1,dim);up_lim=1 * ones(1,dim);
end

if f_sel==21
	dim=4;
    low_lim=0 * ones(1,dim);up_lim=10 * ones(1,dim);
end

if f_sel==22
	dim=4;
    low_lim=0 * ones(1,dim);up_lim=10 * ones(1,dim);
end

if f_sel==23
	dim=4;
    low_lim=0 * ones(1,dim);up_lim=10 * ones(1,dim);
end
