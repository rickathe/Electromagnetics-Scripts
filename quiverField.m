[x,y] = meshgrid(-pi:.25:pi, -pi:.25:pi);

% Replace with components from equations 3.33a-c.
xcomp = -cos(x).*sin(y);
ycomp = sin(x).*cos(y);


quiver(x,y,xcomp,ycomp);


% Provide custom title.
title("3.1.2 Quiver")

xlabel("X Component")
ylabel("Y Component")
