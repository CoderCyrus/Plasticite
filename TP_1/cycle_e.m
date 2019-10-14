%2.e cycyle de traction-compression d'amplitude fixe
% the data
     np=1000; 
% prepare the plot
     x=1:np;
     y=-inf*ones(size(x));
     lh=line(x,y);
     shg;
% Plot data live
for i=1:np
     ix=rem(i-1,np)+1;
     y(ix)=.10*fix(i/np)+rand; % <- new data
     set(lh,'ydata',y);
     pause(.0001); 
end