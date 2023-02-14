n = 5.2
k = 19.1
fi = 3*%pi/4

function dr=f(tetha, r)
    dr = r/sqrt(n*n-1)
endfunction

r0 = k/(n+1)
tetha0 = 0
tetha = 0:0.01:2*%pi
r = ode(r0, tetha0, tetha, f)

function xt=f2(t)
    xt=cos(fi)*t
endfunction
t=0:1:800
plot2d(t, f2(t), style = color('red'))
polarplot(tetha, r, style = color('green'))


r0 = k/(n-1)
r = ode(r0, tetha0, tetha, f)
figure()
plot2d(t, f2(t), style = color('red'))
polarplot(tetha, r, style = color('green'))
