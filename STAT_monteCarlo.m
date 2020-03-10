%% Monte Carlo Simulation
% Author: Richard Atherton
%
% Program simulates possible resistances and currents across a given circuit
% with their probability values. Graphs to histogram.

% Init
N = 10000;
bins = 20;

% Generates a normal distribution with ARG1 mean, ARG 2 std, and ARG3 matrix
% size
R1 = random('norm', 10, 1/6, [N, 1]);
R2 = random('norm', 10, 1/6, [N, 1]);
R3 = random('norm', 20, 1/3, [N, 1]);

% Generate equivalent resistance of circuit
Req = (1 ./ ((1 ./ R1) + (1 ./ R2) + (1 ./ R3)));

% Generate 95% confidence interval
CIR = 1.97 .* (std(Req) ./ sqrt(N));

% Voltage
V = random('norm', 18, 1/3, [N, 1]);
I = V ./ Req;

% Print required values
%fprintf("The equivalent resistance of the circuit is %f4.3\n", Req)
fprintf('The simulated mean of the equivalent resistance is %4.3f\n', mean(Req))
fprintf('The simulated std of the equivalent resistance is %4.3f\n', std(Req))
fprintf('Confidence interval for the true mean is %f4.3 +/- %4.3f\n', mean(Req), CIR)
fprintf('The simulated mean current is %4.3f\n', mean(I))
fprintf('The simulated std of current is %4.3f\n', std(I))

% An interesting way to obtain a 95% confidence interval
% Using size(I) will prove ~500 elements are being removed
I(I < prctile(I, 2.5)) = [];
I(I > prctile(I, 97.5)) = [];
fprintf('The 95%% prediction interval for current is %4.3f\n', mean(I)) 


% Create the histograms

% R1 Histogram
figure
histogram(R1, bins, 'normalization', 'pdf');
title('Likely Values of a +/-5% Tolerance 10 Ohm Resistor')
xlabel('Resistance Value (Ohms)');
ylabel('Probability of Occuring');

% R2 Histogram
figure
histogram(R2, bins, 'normalization', 'pdf');
title('Likely Values of a +/-5% Tolerance 10 Ohm Resistor')
xlabel('Resistance Value (Ohms)');
ylabel('Probability of Occuring');

% R3 Histogram
figure
histogram(R3, bins, 'normalization', 'pdf');
title('Likely Values of a +/-5% Tolerance 20 Ohm Resistor')
xlabel('Resistance Value (Ohms)');
ylabel('Probability of Occuring');

% Req Histogram
figure
histogram(Req, bins, 'normalization', 'pdf');
title('Likely Values of the Circuits Equivalent Resistance')
xlabel('Resistance Value (Ohms)');
ylabel('Probability of Occuring');

% Current Histogram
figure
histogram(I, bins, 'normalization', 'pdf');
title('Current Distribution for the Given Circuit');
xlabel('Current Value (A)');
ylabel('Probability of Occuring');
