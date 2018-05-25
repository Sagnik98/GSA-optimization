
min_sel =1;% all problems are minimization problems

for f_sel= 17 % f_sel determines function to be chosen

	%% setting population size and total iterations
	
	if f_sel <= 13   
    	pop_size = 50;
    	num_itr = 1000;
   	else
    	pop_size = 60;
    	num_itr = 500;
   	end

   	%% excecuting the gravitational search algorithm on F1-F23

   	[best_plot,mean_plot]=GSA(f_sel,min_sel,pop_size,num_itr);

   	%% storing average best so far, median best so far and average mean fitness in Record

   	Record(f_sel,:) =[ best_plot(end) median(best_plot) mean_plot(end) ];


   	%% plotting best_plot ( in logarithmic scale) vs iterations

   	figure
   	semilogy(best_plot,'--k'),hold on;
   	title(['F',num2str(f_sel)]);
   	xlabel('Iteration');ylabel('best_plot');
 end