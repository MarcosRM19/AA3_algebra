void combatMorde()
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
  text("MORDEKAISER", -150, -25);
  fill(color(0, 125, 0));
  rect(-145, -15, maxHealth, 50);
  fill(color(0, 255, 0));
  rect(-145, -15, enemyHealth, 50);
  popMatrix();
  popMatrix();

  pushMatrix();
  translate(width/2, height/2, 50);
  image(manute, 200, -350);
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

    if (randomAtack <= 2 && randomAtack >= 1 && silenciate == false)
    {
      Brasil.play();
      fiddleHealth -= ((maxHealth / 10) * 1);
      textToPrint = 1;
      randomAtack = 0;
    } else if (randomAtack <= 3 && randomAtack >= 2 && silenciate == false)
    {
      Brasil.play();
      fiddleHealth -= ((maxHealth / 10) * 6);
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
      text("Morde uso Abrazo de la Muerte", 400, 700);

      garra.calcula_p();
      garra.pinta_p();
      break;
    case 2:
      text("Morde uso Aniquilación", 450, 700);
      mazazo.calcula_p();
      mazazo.pinta_p();
      break;
    case 3:
      text("Morde esta silenciado", 450, 700);
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
      Brasil.stop();
      if (fiddleHealth <= 0)
      {
        currentScene = 5;
      }
    }
    timer++;

    popMatrix();
  }
}
