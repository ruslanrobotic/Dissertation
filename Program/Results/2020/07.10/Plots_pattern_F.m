%{
figure
plot(C(:,1),C(:,2),C(:,1),C(:,4))
title([B,' resolver'])
Graphs_reduct;
figure
plot(C(:,1),C(:,3),C(:,1),C(:,4))
title([B,' precision sensor'])
Graphs_reduct;
%}






%% Position
%
figure
plot(F(:,1),F(:,2),'r',F(:,1),F(:,3),'b',F(:,1),F(:,4),'--'); % -- referenced position; blue - resolver, red - precision sensor
title([B,' resolver (blue) and precision sensor (red) signals with referenced position (--)'])
ylabel('q, rad');
xlabel('t, s');
Ffont=24;
Fwriting = 'Times New Roman';
grid on;
fig = gcf;
fig.InnerPosition = [1,1,766.4,489.6];
fig.Position = [10,100,766.4,489.6];
%}
%{
% error plot
figure
plot(C(:,1),C(:,4)-C(:,2),'r',C(:,1),C(:,4)-C(:,3),'b'); % blue - resolver, red - precision sensor
title([B,' error resolver (blue) and precision sensor (red) signals with referenced position (--)'])
ylabel('E, rad');
xlabel('t, s');
Ffont=24;
Fwriting = 'Times New Roman';
grid on;
fig = gcf;
fig.InnerPosition = [1,1,766.4,489.6];
fig.Position = [10,100,766.4,489.6];
%}
%{
figure
plot(C(:,1),C(:,4)-C(:,2),'r'); % -- position error
title([B,' position error'])
ylabel('q, rad');
xlabel('t, s');
Ffont=24;
Fwriting = 'Times New Roman';
grid on;
fig = gcf;
fig.InnerPosition = [1,1,766.4,489.6];
fig.Position = [1,1,766.4,489.6];
%}
%{
G=C(:,4);
H=C(:,2);
%for iT = 1:1:1456
for iT = 1:1:583
    G(iT)=0;
    H(iT)=0;
end
for iT = 2911:1:length(H)
    G(iT)=0;
    H(iT)=0;
end
G(G==0) = [];
H(H==0) = [];
display('Average error')
I=mean(H-G)
display('Maximal value of signal above the mean value')
abs(max(H)-mean(H))
display('Maximal value of signal below the mean value')
abs(mean(H)-min(H))
display('Error magnitude')
P=max(abs(max(H)-mean(H)),abs(mean(H)-min(H)))
%P=((max(H)-min(H))/2)
%}







%% Velocity sliding sample
%{
% D = 10*60/2/pi*diff(C(:,3))/timest; % resolver
% Y = 10*60/2/pi*diff(C(:,2))/timest; % precision sensor
stpdif=11;
timest = 0.0034364261;
YC=C(:,2);
YD=C(:,3);
YCP=[];
YDP=[];
for idif = 1:1:(length(C(:,2))-stpdif)
    %YCP(idif) = (YC(idif+stpdif-1)-YC(idif))/(stpdif*timest);
    %YDP(idif) = (YD(idif+stpdif-1)-YD(idif))/(stpdif*timest);
    YCP(idif+floor(stpdif/2),1) = (YC(idif+stpdif-1)-YC(idif))/(stpdif*timest);
    YDP(idif+floor(stpdif/2),1) = (YD(idif+stpdif-1)-YD(idif))/(stpdif*timest);
end;
kgain=1*60/2/pi;
kgain2=1*60/2/pi;
figure; plot(C(1:length(YDP),1),YDP*kgain2,'b',C(1:length(YCP),1),YCP*kgain,'r')
title([B,' velocity, sliding sample'])
ylabel('dq, rpm');
xlabel('t, s');
Ffont=24;
Fwriting = 'Times New Roman';
grid on;
fig = gcf;
fig.InnerPosition = [1,1,766.4,489.6];
fig.Position = [10,100,766.4,489.6];
%}
%{
figure
plot(C(:,1),smooth(C(:,4)-C(:,2),500),'r'); % -- position error
title([B,' position error'])
ylabel('q, rad');
xlabel('t, s');
Ffont=24;
Fwriting = 'Times New Roman';
grid on;
fig = gcf;
fig.InnerPosition = [1,1,766.4,489.6];
fig.Position = [1,1,766.4,489.6];
%}






%% Velocity smoothed
%{
timest = 0.0034364261;
D = [];
Y = [];
D = diff(C(:,3))/timest; % reference
Y = diff(C(:,2))/timest;
%
kgain3=1*60/2/pi;
kgain4=1*60/2/pi;
figure; plot(C(1:length(Y),1),D*kgain4,'b',C(1:length(Y),1),smooth(Y*kgain3,11),'r')
title([B,' velocity, smoothed'])
ylabel('dq, rpm');
xlabel('t, s');
Ffont=24;
Fwriting = 'Times New Roman';
grid on;
fig = gcf;
fig.InnerPosition = [1,1,766.4,489.6];
fig.Position = [10,100,766.4,489.6];
%}
%{
figure; plot(C(1:length(Y),1),D,'b',C(1:length(Y),1),smooth(Y,11),'r')
title([B,' velocity smoothed'])
ylabel('dq, rad/s');
xlabel('t, s');
Ffont=24;
Fwriting = 'Times New Roman';
grid on;
fig = gcf;
fig.InnerPosition = [1,1,766.4,489.6];
fig.Position = [10,100,766.4,489.6];
%}
% figure; plot(D(1:length(Y),:),'b',Y,'r');
% figure; plot(D(1:length(Y),:),'b',smooth(Y,11),'r');

% figure; plot(smooth(diff(1/(4096/2/3.14159265359*10)*A(:,3)),11),1/(4096/2/3.14159265359*10)*A(:,4))

% figure; plot(smooth(diff(1/(4096/2/3.14159265359*10)*A(:,3)),99))