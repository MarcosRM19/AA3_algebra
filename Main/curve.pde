//classes of curves
class  bezier_Curve {
  // ATRIBUTOS
  PVector[] puntos_control_curva;
  PVector[] coeficientes_curva;
  int grueso_curva;
  int puntos_curva;
  // CONSTRUCTOR
  bezier_Curve(PVector[] pc, int g, int p) {
    puntos_control_curva = new PVector[4];
    coeficientes_curva = new PVector[4];
    for (int i=0; i<4; i++) {
      puntos_control_curva[i]=new PVector(0, 0);
      coeficientes_curva[i]=new PVector(0, 0);
      // Igualamos a los puntos que nos han pasado
      puntos_control_curva[i].x = pc[i].x;
      puntos_control_curva[i].y = pc[i].y;
    }
    grueso_curva=g;
    puntos_curva=p;
    calcular_coeficientes();
  }
  // METODOS
  void calcular_coeficientes() {
    coeficientes_curva[0].x=puntos_control_curva[0].x;
    coeficientes_curva[0].y=puntos_control_curva[0].y;

    coeficientes_curva[1].x=-3*puntos_control_curva[0].x
    +3*puntos_control_curva[1].x;
    coeficientes_curva[1].y=-3*puntos_control_curva[0].y
    +3*puntos_control_curva[1].y;
    
    coeficientes_curva[2].x=3*puntos_control_curva[0].x
    -6*puntos_control_curva[1].x+3*puntos_control_curva[2].x;
    coeficientes_curva[2].y=3*puntos_control_curva[0].y
    -6*puntos_control_curva[1].y+3*puntos_control_curva[2].y;

    coeficientes_curva[3].x=-1.0*puntos_control_curva[0].x
    +3*puntos_control_curva[1].x-3*puntos_control_curva[2].x
    +puntos_control_curva[3].x;
    coeficientes_curva[3].y=-1.0*puntos_control_curva[0].y
    +3*puntos_control_curva[1].y-3*puntos_control_curva[2].y
    +puntos_control_curva[3].y;
  }

  void pintar_curva() {
    float incremento_u, x, y;

    incremento_u = 1.0 / (float)puntos_curva;
    
    stroke(grueso_curva);

    for(float u=0.0;u<=1.0;u+=incremento_u){
      x=coeficientes_curva[0].x+coeficientes_curva[1].x*u+
      coeficientes_curva[2].x*u*u+coeficientes_curva[3].x*u*u*u;
      y=coeficientes_curva[0].y+coeficientes_curva[1].y*u+
      coeficientes_curva[2].y*u*u+coeficientes_curva[3].y*u*u*u;
      point(x,y);
    }
    noStroke();
  }
}

class interpolation_Curve
{
  //Recordatorio p(u) = C0+C1u+C2u2+C3u3
  // Atributos
  PVector[] puntos_de_control;
  PVector[] coeficientes;
  color color_curva;
  int grueso_curva;
  int numero_de_puntos;

  // Constructor
  interpolation_Curve(PVector[] pc, int g, int n)
  {
    puntos_de_control = new PVector[4];
    for (int i = 0; i<4; i++)
    {
      puntos_de_control[i] = new PVector(0, 0);
      puntos_de_control[i].x = pc[i].x;
      puntos_de_control[i].y = pc[i].y;
    }
    grueso_curva = g;
    numero_de_puntos = n;
    // Un método servirá oara calcular los coeficientes
    calcula_coefs();
  }

  // Métodos
  void calcula_coefs() // Se ejecuta si cambian los puntos de control
  {
    coeficientes = new PVector[4];
    for (int i = 0; i<4; i++)
    {
      coeficientes[i] = new PVector(0, 0);
    }
    // Ahora actuan las ecuaciones de interpolacion
    // Coeficientes en X
    coeficientes[0].x = puntos_de_control[0].x;
    coeficientes[1].x= -5.5*puntos_de_control[0].x + 9*puntos_de_control[1].x + -4.5*puntos_de_control[2].x + puntos_de_control[3].x;
    coeficientes[2].x= 9*puntos_de_control[0].x + -22.5*puntos_de_control[1].x + 18*puntos_de_control[2].x + -4.5*puntos_de_control[3].x;
    coeficientes[3].x= -4.5*puntos_de_control[0].x + 13.5*puntos_de_control[1].x + -13.5*puntos_de_control[2].x + 4.5*puntos_de_control[3].x;
    // Coeficientes en Y
    coeficientes[0].y = puntos_de_control[0].y;
    coeficientes[1].y= -5.5*puntos_de_control[0].y + 9*puntos_de_control[1].y + -4.5*puntos_de_control[2].y + puntos_de_control[3].y;
    coeficientes[2].y= 9*puntos_de_control[0].y + -22.5*puntos_de_control[1].y + 18*puntos_de_control[2].y + -4.5*puntos_de_control[3].y;
    coeficientes[3].y= -4.5*puntos_de_control[0].y + 13.5*puntos_de_control[1].y + -13.5*puntos_de_control[2].y + 4.5*puntos_de_control[3].y;
  }
  void pinta_curva()
  {
    strokeWeight(grueso_curva);
    stroke(color_curva);
    float incremento_de_u, x, y;
    incremento_de_u = 1.0 / (float)numero_de_puntos;
    for (float u = 0.0; u<=1.0; u+=incremento_de_u)
    {
      x = coeficientes[0].x+coeficientes[1].x*u+coeficientes[2].x*u*u+coeficientes[3].x*u*u*u;

      y = coeficientes[0].y+coeficientes[1].y*u+coeficientes[2].y*u*u+coeficientes[3].y*u*u*u;
      point(x, y);
    }
    strokeWeight(grueso_curva/2);
    stroke(125);
    for (int i = 0; i<4; i++)
    {
      x = puntos_de_control[i].x;
      y = puntos_de_control[i].y;
      point(x, y);
    }
    noStroke();
  }
}
