pkg load symbolic

syms x y

disp('Equation system to solve: ')
z1 = y + 2*x - 4
z2 = sqrt(3*x/(x+y)) + sqrt((x+y)/(9*x)) - 2

[xx yy] = solve(z1, z2);

disp("\nTesing reslts: ")
z1 = eval( subs(z1, {x y}, {xx yy}) )
z2 = eval( subs(z2, {x y}, {xx yy}) )

disp("\nResults ")
xxx = double(xx)
yyy = double(yy)