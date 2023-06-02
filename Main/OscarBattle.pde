// Óscar Combat
void oscar()
{
   fiddleCombat();
   pushMatrix();
  translate(width/4, height/2, 50);
  pushMatrix();
  translate(450, -300, 0);
  fill(color(255));
  box(-300, -100, 0);
  fill(color(0));
  textSize(30);
  text("ÓSCAR", -150, -25);
  fill(color(0, 125, 0));
  rect(-145, -15, maxHealth, 50);
  fill(color(0, 255, 0));
  rect(-145, -15, enemyHealth, 50);
  popMatrix();
  popMatrix();

  pushMatrix();
  translate(width/2, height/2, 50);
  image(oscar, 300, -350);
  popMatrix();
  fiddleCombat();
  if (combatScene == 2)
  {
    pushMatrix();
    translate(0, 0, 50);

    fill(color(125));
    rect(0, 625, 1200, 150);
    textSize(40);
    fill(color(0));

    if (randomAtack < 2 && randomAtack >= 1 && silenciate == false)
    {
      fiddleHealth -= ((maxHealth / 10) * 2);
      textToPrint = 1;
      randomAtack = 0;
    } else if (randomAtack <= 3 && randomAtack >= 2 && silenciate == false)
    {
      fiddleHealth -= ((maxHealth / 10) * 7);
      textToPrint = 2;
      randomAtack = 0;
    } else if (silenciate)
    {
      textToPrint = 3;
      randomAtack = 0;
      silenciate = false;
    }
    switch(textToPrint)
    {
    case 1:
      text("Óscar uso Me Apunto 5 Nombres", 400, 700);
      hoja.calcula_p();
      hoja.pinta_p();
      break;
    case 2:
      text("Óscar uso Esto os Servirá para el Futuro", 350, 700);
      pixar.calcula_p();
      pixar.pinta_p();
      break;
    case 3:
      text("Óscar esta silenciado", 450, 700);
      break;
    }

    if (timer >= 60)
    {
      maxTimer++;
      timer = 0;
    }
    if (maxTimer >= changeTime)
    {
      combatScene = 0;
      maxTimer = 0;
      textToPrint = 0;
      if (fiddleHealth <= 0)
      {
        currentScene = 3;
      }
    }
    timer++;

    popMatrix();
  }
}
