% DESCRIPTION:
% Fill values in x,y and check if the reward curve suits the reward
% strategy desired.

x = [0  0.15 0.25 0.6 0.65 0.7 0.75 0.8 0.9 0.98 1];
y = [-2 -1.2 -1 0.5 0.9 1.8 0.9 0.5 0 -1 -2];

% An empiric correction of -0.0257 is applied to center the curve around 0.7
rewardCurveSOC = polyfit(x-0.0257,y,5);

X = 0:0.005:1;
Y = polyval(rewardCurveSOC,X);

%figure(100)
%plot(X,Y)

save('rewardCurveSOC.mat','rewardCurveSOC');

clear x y X Y