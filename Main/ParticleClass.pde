// Class of particles
class particula {
  // Atributos
  PImage image;
  float kd; 
  boolean viva_p;
  int masa;
  float[] posicion_p = new float[2];
  float[] velocidad_p = new float[2];
  float[] aceleracion_p = new float[2];
  // Constructor
  particula(PImage c,  float x, float y, float vx, float vy) {
    image = c;
    kd = 0.05;
    masa = 5;
    viva_p = true;
    posicion_p[0] = x;
    posicion_p[1] = y;
    velocidad_p[0] = vx;
    velocidad_p[1] = vy;
    aceleracion_p[0] = 0.0;
    aceleracion_p[1] = 0.0;
  }
  // Métodos (funciones)
  void pinta_p() { // Pintar la particula
    image(image, posicion_p[0], posicion_p[1]);
  }

  void calcula_p() { // Mover la particula (solver)
    float[] fuerza = new float[2];
    float deltaT = 0.04;
    // 1
    // Gravedad
    fuerza[0]=0.0;
    fuerza[1]=9.8;
    // Rozamiento
    fuerza[0]+=-kd*velocidad_p[0];
    fuerza[1]+=-kd*velocidad_p[1];
    // 2
    aceleracion_p[0]=fuerza[0]/masa;
    aceleracion_p[1]=fuerza[1]/masa;
    // 3
    velocidad_p[0]=velocidad_p[0]+aceleracion_p[0]*deltaT;
    velocidad_p[1]=velocidad_p[1]+aceleracion_p[1]*deltaT;
    // 4
    posicion_p[0]=posicion_p[0]+velocidad_p[0]*deltaT;
    posicion_p[1]=posicion_p[1]+velocidad_p[1]*deltaT;
  }
}
