void particles()
{
  if (currentCombat == 1)
  {
    shurikens = new particula(shuriken, 500, -100, -150, 50);
    shurikens1 = new particula(shuriken, 550, -100, -150, 50);
    shurikens2 = new particula(shuriken, 450, -100, -150, 50);
  } else if (currentCombat == 2)
  {
    garra = new particula (shuriken, 0, -100, 0, 50);
    mazazo = new particula (shuriken, 0, -100, 0, 50);
  }
  else if (currentCombat == 3)
  {
    garra = new particula (shuriken, 0, -100, 0, 50);
    mazazo = new particula (shuriken, 0, -100, 0, 50);
  }
}
