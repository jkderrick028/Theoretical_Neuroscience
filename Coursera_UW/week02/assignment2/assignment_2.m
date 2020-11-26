data = load('/Users/jkderrick028/Documents/On_Going_Course_Work/Computational_Neuroscience/University_of_Washington/week02/assignment2/c1p8.mat');
spike_positions = find(data.rho==1);
%% spike triggered average
trigger_length = 300;
trigger_vector = zeros(1,trigger_length);
trigger_num = 0;    % the number of triggers we will use to compute the spike-triggered-avarage
for spikeI=1:length(spike_positions)
   if spike_positions(spikeI)<300
      continue; 
   end
   trigger_vector = trigger_vector + data.stim(spike_positions(spikeI)-trigger_length+1:spike_positions(spikeI)-1);
   trigger_num = trigger_num + 1;
end
trigger_vector = trigger_vector / trigger_num; % this is the spike-triggered-average
