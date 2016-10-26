clear all
close all
clc

% L17 practical

%% Up to now, we integrated continuous functions.

% How do we do integration when we have discretely sampled data?

x = linspace( 0, pi, 11 );
y = sin(x);

plot(x,y,'k*'); xlabel('x [rad]'); ylabel('sin(x)'); axis('tight');

%%

% trapz  Trapezoidal numerical integration.
Q = trapz( x, y ) % trapz(x-vector, y-vector)

%%

f = @(x) sin(x);
Qi = integral( f, 0, pi, 'AbsTol', 1.e-8 ) % new method

%% Class Exercise
f = @(y) sqrt(y+1)
Q = quad( f, 0, 3 )

%%
f = @(r) ((5.*r)./((4+(r.^2)).^2))
R = integral( f, -1, 1)

%% 
f = @(t) ((cos(2.*t)).^3)*sin(2.*t)
b = pi/6
t = integral( f, 0, b, 'AbsTol' 1.e-8 )
%% 
x = linspace(0,5,101);
y = x.*exp(-x)
plot(x,y,'b')

