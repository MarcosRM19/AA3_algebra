void particles()
{
  if (currentCombat == 1)
  {
    shurikens = new particula(shuriken, 500, -100, -150, 50);
    shurikens1 = new particula(shuriken, 550, -100, -150, 50);
    shurikens2 = new particula(shuriken, 450, -100, -150, 50);
  } else if (currentCombat == 2)
  {
    garra = new particula (garras, -50, -50, 0, 75);
    mazazo = new particula (bonk, 100, -50, 0, 75);
  }
  else if (currentCombat == 3)
  {
    susto = new particula (nocturneQ, 900, 150, -150, 50);
    stun = new particula (nocturneE, 900, 150, -150, 50);
  }
  else if(currentCombat == 4)
  {
     mal = new particula(malo, 650, 100, -100, 50);
    mivi = new particula(Mivi, 650, 100, -100, 50);
    mente = new particula(Mente, 650, 100, -100, 50);
  }
  else if (currentCombat == 5)
  {
    hoja = new particula(nombres, 750, 150, -150, 50);
    pixar = new particula(pixars, 750, 250, -150, 50);
  }
}
