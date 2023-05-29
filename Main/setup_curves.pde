void setUpCurves()
{
  PVector[] pc, pc2, pc3;
  PVector[] Ipc;
  int g,n;


  g = 5;
  n = 500;

  pc = new PVector[4];
  pc2 = new PVector[4];
  pc3 = new PVector[4];
  Ipc = new PVector[4];
  pc[0] = new PVector(300, 400);
  pc[1] = new PVector(300, 200);
  pc[2] = new PVector(400, 300);
  pc[3] = new PVector(900, 200);
  
  pc2[0] = new PVector(900, 200);
  pc2[1] = new PVector(700, 500);
  pc2[2] = new PVector(1100, 500);
  pc2[3] = new PVector(900, 700);
  
  pc3[0] = new PVector(900, 700);
  pc3[1] = new PVector(500, 500);
  pc3[2] = new PVector(200, 500);
  pc3[3] = new PVector(300, 400);
  
  Ipc[0] = new PVector(400, 200);
  Ipc[1] = new PVector(470, 30);
  Ipc[2] = new PVector(520, 60);
  Ipc[3] = new PVector(600, 100);
  

  curve = new bezier_Curve(pc, g, n);
  curve2 = new bezier_Curve(pc2, g, n);
  curve3 = new bezier_Curve(pc3, g, n);
  Icurve = new interpolation_Curve(Ipc, g, n);
  
}
