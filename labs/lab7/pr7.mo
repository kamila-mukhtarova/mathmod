model pr7
parameter Real a = 0.8;
parameter Real b = 0.15;
parameter Real N = 1670;

Real n(start=12);

equation
  der(n) = (a*time+b*sin(time)*n) * (N-n);
end pr7;
