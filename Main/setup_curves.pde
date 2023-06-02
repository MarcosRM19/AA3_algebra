void setUpCurves()
{
  PVector[] pc, pc2, pc3;
  PVector[] Ipc, Ipc2, Ipc3, Ipc4;
  int g, n;


  g = 5;
  n = 500;

  pc = new PVector[4];
  pc2 = new PVector[4];
  pc3 = new PVector[4];
  Ipc = new PVector[4];
  Ipc2 = new PVector[4];
  Ipc3 = new PVector[4];
  Ipc4 = new PVector[4];

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
  Ipc[1] = new PVector(420, 40);
  Ipc[2] = new PVector(520, 60);
  Ipc[3] = new PVector(670, 100);

  Ipc2[0] = new PVector(670, 100);
  Ipc2[1] = new PVector(750, 260);
  Ipc2[2] = new PVector(670, 290);
  Ipc2[3] = new PVector(400, 200);

  Ipc3[0] = new PVector(570, 600);
  Ipc3[1] = new PVector(450, 680);
  Ipc3[2] = new PVector(370, 690);
  Ipc3[3] = new PVector(300, 600);

  Ipc4[0] = new PVector(300, 600);
  Ipc4[1] = new PVector(370, 500);
  Ipc4[2] = new PVector(470, 550);
  Ipc4[3] = new PVector(570, 600);


  curve = new bezier_Curve(pc, g, n);
  curve2 = new bezier_Curve(pc2, g, n);
  curve3 = new bezier_Curve(pc3, g, n);
  Icurve = new interpolation_Curve(Ipc, g, n);
  Icurve2 = new interpolation_Curve(Ipc2, g, n);
  Icurve3 = new interpolation_Curve(Ipc3, g, n);
  Icurve4 = new interpolation_Curve(Ipc4, g, n);
}
