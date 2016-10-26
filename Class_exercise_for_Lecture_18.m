x = 0:4;
y = (3.75* x) + 0.25;

figure;
tEqn = sprintf( 'y(x) = %0.2fx + %0.2f; 1st-order linear\n');
plot(x,y,'r+');
legend(tEqn);% plot the (x,y) points with red plus sign
xlabel('x'); ylabel('y(x)');
order = 1;
P1 = polyfit(x,y,order)
%%
x = 0:4;
y = (5 * x ) + 7;

figure;
plot(x,y,'r+');
xlabel('x'); ylabel('y(x)');
order = 1;
P2 = polyfit(x,y,order)
%%
x = 0:4;
y = (2 * x.^2 ) ;

figure;
plot(x,y,'r+');
xlabel('x'); ylabel('y(x)');
order = 2;
P3 = polyfit(x,y,order)
%% 
x = 0:4;
y = (3 * x.^3 ) + (2 * x.^2) + x ;

figure;
plot(x,y,'r+');
xlabel('x'); ylabel('y(x)');
order = 3;
P3 = polyfit(x,y,order)
%%
x = 0:4;
y = (x.^7 ) + (3 * x) - 3 ;

figure;
plot(x,y,'r+');
xlabel('x'); ylabel('y(x)');
order = 7;
P3 = polyfit(x,y,order)
%%
x = 0:4
coef = [3.75,0.25];
yo = polyval( coef, x );

hold on;

plot(x,yo,'bo'); % plot the (x,y) points with blue circles
order = 1;
P0 = polyfit(x,yo,order)
%%
x = 0:4
coef = [5,7];
yo = polyval( coef, x );

hold on;

plot(x,yo,'bo'); % plot the (x,y) points with blue circles
order = 1;
P1 = polyfit(x,yo,order)