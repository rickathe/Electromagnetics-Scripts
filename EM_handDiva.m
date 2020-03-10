[x,y] = meshgrid(-pi:.25:pi, -pi:.25:pi);
z = 0.*x;


% These are the hand-calculated divergence values you/we hopefully
% computed correctly. Pray.
xcomp = sin(x).*sin(y);
ycomp = sin(x).*sin(y);
zcomp = 0;

% Don't touch.
figure
pcolor(x, y, z)
colorbar
caxis([-1 1]);

title("Hand-Computed Divergence")
xlabel("X Component")
ylabel("Y Component")
