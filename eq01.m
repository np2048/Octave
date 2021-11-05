pkg load symbolic
clc()

syms x y

z1 = sqrt(x+y) + (x-y)^(sym(1)/4) - 8
z2 = (x^3 + x*x*y - x*y^2 - y^3)^(sym(1)/4) - 12

syms u v
z3 = subs(z1, {'x+y' 'x-y'}, {u v})
z4 = factor(z2)
z4 = subs(z4, {'x+y' 'x-y'}, {u v})

[u v] = solve(z3, z4)
xx = (u+v)/2
yy = (u-v)/2

disp('Tesing reslts: ')
subs(z1, {x y}, {xx yy})
subs(z2, {x y}, {xx yy})

disp('Results ')
xx
yy