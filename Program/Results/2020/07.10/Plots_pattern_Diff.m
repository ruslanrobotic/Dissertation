%% Position
%
figure
plot(C(:,1),C(:,2),'r',C(:,1),C(:,3),'b'); % -- referenced position; blue - resolver, red - precision sensor
title([B,' resolver (blue) and precision sensor (red) signals'])
ylabel('q, rad');
xlabel('t, s');
Ffont=24;
Fwriting = 'Times New Roman';
grid on;
fig = gcf;
fig.InnerPosition = [1,1,766.4,489.6];
fig.Position = [10,100,766.4,489.6];