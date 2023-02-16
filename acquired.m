params;

acq = zeros(cultures,1);
n = initial_inoculum*2^generations;
for i = 1:cultures
    acq(i) = binornd(n,prob_mutation);
end

%histogram for acq
hist(acq);
xlabel('resistant bacteria');
ylabel('number of cultures')
title('acquired immunity hypothesis')