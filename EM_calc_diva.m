
[x,y] = meshgrid (-pi:.25:pi, -pi: .25: pi);

% These are the x and y components from the provided equations 3.44a-c.
xcomp = -cos(x).*sin(y);
ycomp = sin(x).*cos(y);


div = divergence(xcomp, ycomp);

pcolor(x, y, div);

title("Divergence Calculated by MATLAB");
colorbar
xlabel("X Component");
ylabel("Y Component");



