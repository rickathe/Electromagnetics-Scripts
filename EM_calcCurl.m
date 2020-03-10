[x,y] = meshgrid (-pi:.25:pi, -pi: .25: pi);


% Values from equations 3.44a-c.
xcomp = -cos(x).*sin(y);
ycomp = sin(x).*cos(y);


[curlz,cav] = curl(x,y,xcomp,ycomp);

% Plot graph.
figure(1)
pcolor(x,y,curlz); shading('flat'); colorbar
caxis([-1 1]);
title("MATLAB Calculated Curl");
xlabel("X Component");
ylabel("Y Component");



