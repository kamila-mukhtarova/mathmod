1032203686%70+1

using Plots
using DifferentialEquations

x0 = 44200
y0 = 54100
t0 = 0
tmax = 1

a = 0.312
b = 0.456
c = 0.256
h = 0.34

a2 = 0.318
b2 = 0.615
c2 = 0.312
h2 = 0.512

function P(t)
    return sin(t+3)
end

function Q(t)
    return cos(t+7)
end

function P2(t)
    return abs(cos(8*t))
end

function Q2(t)
    return abs(sin(6*t))
end      

function syst(dy, y, p, t)
    dy[1] = -a*y[1] - b*y[2] + P(t)
    dy[2] = -c*y[1] - h*y[2] + Q(t)
end

function syst2(dy, y, p, t)
    dy[1] = -a2*y[1] - b2*y[2] + P2(t)
    dy[2] = -c2*y[1]*y[2] - h2*y[2] + Q2(t)
end

u0 = [x0; y0]
tspan = (t0, tmax)
t = collect(LinRange(0,1,100))
prob = ODEProblem(syst, u0, tspan)
sol = solve(prob, saveat=t)
prob2 = ODEProblem(syst2, u0, tspan)
sol2 = solve(prob2, saveat=t)

plot(sol)

savefig("01.png")

plot(sol2)

savefig("02.png")


