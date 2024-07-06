// Gmsh project created on Thu Jul 04 18:35:08 2024
//+
Point(1) = {0, -0, 0, 1.0};
//+
Point(2) = {-0, 1, 0, 1.0};
//+
Point(3) = {1, 1, 0, 1.0};
//+
Point(4) = {1, -0, 0, 1.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 1};
//+
Curve Loop(1) = {2, 3, 4, 1};
//+
Plane Surface(1) = {1};
//+
Physical Curve("boundary", 5) = {1, 2, 3, 4};
//+
Transfinite Surface {1} = {2, 3, 4, 1};
//+
Transfinite Curve {1, 3, 2, 4} = 9 Using Progression 1;
//+
Physical Surface("domain", 6) = {1};
