%% function  to provide with range & dimensions of functions

function [dim,up_lim,low_lim]=f_range(f_sel)

%% f_sel    : determines function to be fitted
%% dim      : dimension of test function
%% up_lim   : upper limit of range of test function
%% low_lim  : lower limit of range of test function

dim=30;
if f_sel==1
    low_lim=-100;up_lim=100;
end

if f_sel==2
    low_lim=-10;up_lim=10;
end

if f_sel==3
    low_lim=-100;up_lim=100;
end

if f_sel==4
    low_lim=-100;up_lim=100;
end

if f_sel==5
    low_lim=-30;up_lim=30;
end

if f_sel==6
    low_lim=-100;up_lim=100;
end

if f_sel==7
    low_lim=-1.28;up_lim=1.28;
end

if f_sel==8
    low_lim=-500;up_lim=500;
end

if f_sel==9
    low_lim=-5.12;up_lim=5.12;
end

if f_sel==10
    low_lim=-32;up_lim=32;
end

if f_sel==11
    low_lim=-600;up_lim=600;
end

if f_sel==12
    low_lim=-50;up_lim=50;
end

if f_sel==13
    low_lim=-50;up_lim=50;
end

if f_sel==14
    low_lim=-65.536;up_lim=65.536;dim=2;
end

if f_sel==15
    low_lim=-5;up_lim=5;dim=4;
end

if f_sel==16
    low_lim=-5;up_lim=5;dim=2;
end

if f_sel==17
    low_lim=[-5 0];up_lim=[10 15];dim=2;
end

if f_sel==18
    low_lim=-2;up_lim=2;dim=2;
end

if f_sel==19
    low_lim=0;up_lim=1;dim=3;
end

if f_sel==20
    low_lim=0;up_lim=1;dim=6;
end

if f_sel==21
    low_lim=0;up_lim=10;dim=4;
end

if f_sel==22
    low_lim=0;up_lim=10;dim=4;
end

if f_sel==23
    low_lim=0;up_lim=10;dim=4;
end
