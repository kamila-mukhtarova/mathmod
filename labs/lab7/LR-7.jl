using Plots

using DifferentialEquations

1032203686%70+1

a = 0.133
b = 0.000033
N = 1670

tspan = (0, 15)
t = collect(LinRange(0, 15, 500))
n = 12

function syst(dy, y, p, t)
    dy[1] = (a+b*y[1])*(N-y[1])
end

prob = ODEProblem(syst, [n], tspan)
sol = solve(prob, saveat = t)

plot(sol)

savefig("04.png")

a = 0.0000132
b = 0.32
N = 1670

tspan = (0, 0.1)
t = collect(LinRange(0, 0.1, 500))
n = 12

function syst(dy, y, p, t)
    dy[1] = (a+b*y[1])*(N-y[1])
end

prob = ODEProblem(syst, [n], tspan)
sol = solve(prob, saveat = t)

plot(sol)

savefig("05.png")

a = 0.8
b = 0.15
N = 1670

tspan = (0, 0.3)
t = collect(LinRange(0, 0.3, 500))
n = 12

function syst(dy, y, p, t)
    dy[1] = (a*t+b*sin(t)*y[1])*(N-y[1])
end

prob = ODEProblem(syst, [n], tspan)
sol = solve(prob, saveat = t)

plot(sol)

savefig("06.png")


