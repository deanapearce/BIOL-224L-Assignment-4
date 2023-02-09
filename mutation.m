% set variables
params;

mut=zeros(cultures,1);
for i=1:cultures
    n=initial_inoculum;
    for t=1:generations
        n=2*n;
        new_mutations = poissrnd(n*prob_mutation);
        mut(i) = 2*mut(i)+new_mutations;
        n = n-new_mutations;
    end
end

%fanofactor for mut
fano_factor_mut = var(mut)/mean(mut);

%histogram for mut
hist(mut);
xlabel('resistant bacteria');
ylabel('number of cultures')
title('mutation hypothesis')