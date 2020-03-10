%% Simple Linear Regression
% Author: Richard Atherton
%
% Program creates a best fit linear regression through the provided data on
% purity vs hydrocarbon levels.


% Data
hydro = [0.99 1.02 1.15 1.29 1.46 1.36 0.87 1.23 1.55 1.4 1.19 1.15 0.98 1.01 1.11 1.2 1.26 1.32 1.43 0.95]';
purity = [90.01 89.05 91.43 93.74 96.73 94.45 87.59 91.77 99.42 93.65 93.65 92.52 90.56 89.54 89.85 90.39 93.25 93.41 94.98 87.33]';


% Plot data
figure
scatter(hydro, purity)
title('Chemical Distillation of Oxygen')
xlabel('Purity of Oxgen Produced (%)')
ylabel('Hydrocabons Present in Condenser (%)')

corrcoef(hydro, purity)
fitlm(hydro, purity)
