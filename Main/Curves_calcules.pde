boolean active_c1, active_c2, active_c3, active_c4, active_c5, active_c6, active_c7; 
float u; 

void SetUpCurvesCalcules()
{
   active_c2 = true;
   active_c4 = true;
   active_c7 = true;
}
void CalcularManute()
{
 float inc_u = 1.0 / (float)Icurve.numero_de_puntos; 
  // RECORDATORIO -> p(u) = Co + C1u + C2u^2 + C3u^3
  
  if (u > 1 && active_c2 == true)
  {
    u = 0; 
    active_c1 = true; 
    active_c2 = false; 
  }
  else if (u > 1 && active_c1 == true)
  {
    u = 0; 
    active_c1 = false; 
    active_c2 = true; 
  }
   if (active_c2 == true)
  {
    manutePosX = Icurve2.coeficientes[0].x + Icurve2.coeficientes[1].x*u +Icurve2.coeficientes[2].x*u*u +Icurve2.coeficientes[3].x*u*u*u; 
    manutePosY = Icurve2.coeficientes[0].y + Icurve2.coeficientes[1].y*u + Icurve2.coeficientes[2].y*u*u + Icurve2.coeficientes[3].y*u*u*u; 
  }
  else if (active_c1 == true)
  {
    manutePosX = Icurve.coeficientes[0].x +Icurve.coeficientes[1].x*u + Icurve.coeficientes[2].x*u*u + Icurve.coeficientes[3].x*u*u*u; 
    manutePosY = Icurve.coeficientes[0].y + Icurve.coeficientes[1].y*u + Icurve.coeficientes[2].y*u*u + Icurve.coeficientes[3].y*u*u*u; 
  }
  u+= inc_u; 
  if (!manuteIsDead)
    {
      imageMode(CENTER);
      image(miniManute, manutePosX, manutePosY);
    }
}

void CalcularMivi()
{
 float inc_u = 1.0 / (float)Icurve2.numero_de_puntos; 
  // RECORDATORIO -> p(u) = Co + C1u + C2u^2 + C3u^3
  
  if (u > 1 && active_c3 == true)
  {
    u = 0; 
    active_c4 = true; 
    active_c3 = false; 
  }
  else if (u > 1 && active_c4 == true)
  {
    u = 0; 
    active_c4 = false; 
    active_c3 = true; 
  }
   if (active_c3 == true)
  {
    marcosDaniPosX = Icurve3.coeficientes[0].x + Icurve3.coeficientes[1].x*u +Icurve3.coeficientes[2].x*u*u +Icurve3.coeficientes[3].x*u*u*u; 
    marcosDaniPosY = Icurve3.coeficientes[0].y + Icurve3.coeficientes[1].y*u + Icurve3.coeficientes[2].y*u*u + Icurve3.coeficientes[3].y*u*u*u; 
  }
  else if (active_c4 == true)
  {
    marcosDaniPosX = Icurve4.coeficientes[0].x +Icurve4.coeficientes[1].x*u + Icurve4.coeficientes[2].x*u*u + Icurve4.coeficientes[3].x*u*u*u; 
    marcosDaniPosY = Icurve4.coeficientes[0].y + Icurve4.coeficientes[1].y*u + Icurve4.coeficientes[2].y*u*u + Icurve4.coeficientes[3].y*u*u*u; 
  }
  u+= inc_u; 
  
   if (!marcosDaniDead)
    {
      imageMode(CENTER);
      image(miniMarcosDani, marcosDaniPosX, marcosDaniPosY);
    }

}

void CalcularNocturne()
{
 float inc_u = 1.0 / (float)curve.puntos_curva; 
  // RECORDATORIO -> p(u) = Co + C1u + C2u^2 + C3u^3
  
  if (u > 1 && active_c5 == true)
  {
    u = 0; 
    active_c6 = true; 
    active_c5 = false; 
  }
  else if (u > 1 && active_c6 == true)
  {
    u = 0; 
    active_c6 = false; 
    active_c7 = true; 
  }
   else if (u > 1 && active_c7 == true)
  {
    u = 0; 
    active_c7 = false; 
    active_c5 = true; 
  }
   if (active_c5 == true)
  {
    nocturnePosX = curve.coeficientes_curva[0].x + curve.coeficientes_curva[1].x*u +curve.coeficientes_curva[2].x*u*u +curve.coeficientes_curva[3].x*u*u*u; 
    nocturnePosY = curve.coeficientes_curva[0].y + curve.coeficientes_curva[1].y*u + curve.coeficientes_curva[2].y*u*u + curve.coeficientes_curva[3].y*u*u*u; 
  }
  else if (active_c6 == true)
  {
    nocturnePosX = curve2.coeficientes_curva[0].x +curve2.coeficientes_curva[1].x*u + curve2.coeficientes_curva[2].x*u*u + curve2.coeficientes_curva[3].x*u*u*u; 
    nocturnePosY = curve2.coeficientes_curva[0].y + curve2.coeficientes_curva[1].y*u + curve2.coeficientes_curva[2].y*u*u + curve2.coeficientes_curva[3].y*u*u*u; 
  }
  else if (active_c7 == true)
  {
    nocturnePosX = curve3.coeficientes_curva[0].x +curve3.coeficientes_curva[1].x*u + curve3.coeficientes_curva[2].x*u*u + curve3.coeficientes_curva[3].x*u*u*u; 
    nocturnePosY = curve3.coeficientes_curva[0].y + curve3.coeficientes_curva[1].y*u + curve3.coeficientes_curva[2].y*u*u + curve3.coeficientes_curva[3].y*u*u*u; 
  }
  u+= inc_u; 
  
  if (!nocturneIsDead)
    {
      imageMode(CENTER);
      image(miniNocturne, nocturnePosX, nocturnePosY);
    }

}
