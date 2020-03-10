[x,y] = meshgrid (-pi:.25:pi, -pi: .25: pi);

% Replace with hand-handculated curl values of equations 3.44a-c.
xcomp = -cos(x).*sin(y);
ycomp = sin(x).*cos(y);


% Replace with calculated curl.
% This one might not work, check w/ Kelly's pic of the TA's code.
z = 2.*(cos(x)+cos(y))


%Plot the graph.
figure(1)
pcolor(x,y,z); shading('flat'); colorbar
caxis([-1 1]);
title("Hand-Calculated Curl");
xlabel("X Component");
ylabel("Y Component");



