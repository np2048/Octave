pkg load symbolic

syms u v x w

disp("\n\n")
disp('Equation system to solve: ')
disp("_________________________________________\n")
q4 = u*v*x*x - 8
q2 = v*x*x*w - 24
q3 = x*x*w*u - 12
q1 = u - x + v + w - 4

[uu vv ww xx] = solve(q1, q2, q3, q4)

disp("\n\n")
disp('Tesing reslts:')
disp("_________________________________________\n")
format short
q1 = eval( subs(q1, {u v x w}, {uu, vv, xx, ww}) )
q2 = eval( subs(q2, {u v x w}, {uu, vv, xx, ww}) )
q3 = eval( subs(q3, {u v x w}, {uu, vv, xx, ww}) )
q4 = eval( subs(q4, {u v x w}, {uu, vv, xx, ww}) )

disp("\n\n")
disp('Results')
disp("_________________________________________\n")
u = eval(uu)
v = eval(vv)
w = eval(ww)
x = eval(xx)
