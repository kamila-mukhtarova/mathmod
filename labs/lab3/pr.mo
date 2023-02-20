model pr
Real y11(start=44200);
Real y21(start=54100);
Real y12(start=44200);
Real y22(start=54100);

parameter Real a=0.312;
parameter Real b=0.456;
parameter Real c=0.256;
parameter Real h=0.34;

parameter Real a2=0.318;
parameter Real b2=0.615;
parameter Real c2=0.312;
parameter Real h2=0.512;

equation
  der(y11) = -a*y11 - b*y21 + sin(3+time);
  der(y21) = -c*y11 - h*y21 + cos(7+time);
  
equation
  der(y12) = -a2*y12 - b2*y22 + abs(cos(8*time));
  der(y22) = -2*y12*y22 - h2*y22 + abs(sin(6*time));
end pr;
