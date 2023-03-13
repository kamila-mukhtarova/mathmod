model pr6
parameter Real a = 0.09;
parameter Real b = 0.02;

Real S(start=14949);
Real I(start=95);
Real R(start=45);

equation
  der(S) = -a*S;
  der(I) = a*S-b*I;
  der(R) = b*I;

end pr6;
