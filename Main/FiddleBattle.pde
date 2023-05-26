void fiddleCombat()
{
  pushMatrix();
  translate(width/4, height/2, 50);

  pushMatrix();
  translate(200, 150, 0);
  fill(color(255));
  box(-275, -100, 0);
  fill(color(0));
  textSize(30);
  text("FIDDLE", -130, -25);
  fill(color(0, 125, 0));
  rect(-125, -15, maxHealth, 50);
  fill(color(0, 255, 0));
  rect(-125, -15, fiddleHealth, 50);
  popMatrix();
  image(fiddle, -250, -60);
  popMatrix();


  if (combatScene == 0)
  {
    pushMatrix();
    translate(0, 0, 50);

    fill(color(125));
    stroke(1);
    for (int i = 0; i<4; i++)
    {
      rect(atacks[i].x, atacks[i].y, m_width, m_height);
    }
    fill(color(0));
    textSize(40);
    text("TERROR", 230, 675);
    text("COSECHA ABUNDANTE", 720, 675);
    text("SEGAR", 250, 750);
    text("TORMENTA DE CUERVOS", 700, 750);

    textSize(20);
    text(fear, 550, 690);
    text("/", 570, 690);
    text(maxFear, 575, 690);

    text(recover, 1100, 690);
    text("/", 1120, 690);
    text(maxRecover, 1125, 690);

    text(silence, 550, 765);
    text("/", 570, 765);
    text(maxSilence, 575, 765);

    text(ultimate, 1100, 765);
    text("/", 1110, 765);
    text(maxUltimate, 1115, 765);
    noStroke();

    popMatrix();
  }
  if (combatScene == 1)
  {

    pushMatrix();
    translate(0, 0, 50);

    fill(color(125));
    rect(0, 625, 1200, 150);
    fill(color(0));
    textSize(40);
    switch(moveAtack)
    {
    case 1:
      enemyHealth -= ((maxHealth / 10) * 3);
      moveAtack = 0;
      textToPrint = 1;
      break;

    case 2:
      enemyHealth -= ((maxHealth / 10) * 2);
      fiddleHealth += ((maxHealth / 10) * 2);
      moveAtack = 0;
      textToPrint = 2;
      break;

    case 3:
      silenciate = true;
      enemyHealth -= ((maxHealth / 10) * 1);
      moveAtack = 0;
      textToPrint = 3;
      break;

    case 4:
      enemyHealth -= ((maxHealth / 10) * 6);
      moveAtack = 0;
      textToPrint = 4;
      break;
    }
    switch(textToPrint)
    {
    case 1:
      text("Usaste Terror", 500, 700);
      cuervos.calcula_p();
      cuervos.pinta_p();
      break;
    case 2:
      text("Usaste Cosecha Abundante", 400, 700);
      fiddlew.calcula_p();
      fiddlew.pinta_p();
      break;
    case 3:
      text("Usaste Segar", 500, 700);
      fiddleFear.calcula_p();
      fiddleFear.pinta_p();
      break;
    case 4:
      text("Usaste Tempestad de Cuervos", 400, 700);
      cuervos1.calcula_p();
      cuervos1.pinta_p();
      cuervos2.calcula_p();
      cuervos2.pinta_p();
      break;
    }


    if (timer >= 60)
    {
      maxTimer++;
      timer = 0;
    }
    if (maxTimer >= changeTime)
    {
      combatScene = 2;
      maxTimer = 0;
      if (currentCombat != 4)
      {
        randomAtack = random(1, 3);
      } else
      {
        randomAtack = random(1, 4);
      }
      if (enemyHealth <= 0)
      {
        currentScene = 1;
        switch(currentCombat)
        {
        case 1:
          zedIsDead = true;
          break;
        case 2:
          manuteIsDead = true;
          break;
        case 3:
          nocturneIsDead = true;
          break;
        case 4:
          marcosDaniDead = true;
          break;
        case 5:
          oscarIsDead = true;
          break;
        case 6:
        }

        combatScene = 0;
        enemyHealth = maxHealth;
      }
      particles();
      textToPrint = 0;
    }
    timer++;
    popMatrix();
  }
}

void mousePressed()
{
  if (combatScene == 0)
  {

    PVector punto_min_1, punto_max_1;
    punto_min_1=new PVector(0, 0);
    punto_max_1=new PVector(0, 0);
    for (int i=0; i<4; i++)
    {
      punto_min_1.x=atacks[i].x-m_width/2.0 +300; // Xmin
      punto_max_1.x=atacks[i].x+m_width/2.0 +300; // Xmax
      punto_min_1.y=atacks[i].y-m_height/2.0 +55; // Ymin
      punto_max_1.y=atacks[i].y+m_height/2.0 +55; // Ymax

      if ((punto_max_1.x>mouseX)&&
        (punto_max_1.y>mouseY)&&
        (mouseX>punto_min_1.x)&&
        (mouseY>punto_min_1.y) && currentScene == 2)
      {
        if (i == 0 && fear >0)
        {
          moveAtack = 1;
          cuervos = new particula(cuervo, 0, 250, 150, -50);
          combatScene = 1;
          fear--;
        }
        if (i == 1 && recover > 0)
        {
          moveAtack = 2;
          fiddlew = new particula(fiddleW, width-400, height-500, 0, -50);
          combatScene = 1;
          recover--;
        }
        if ( i == 2 && silence > 0)
        {
          moveAtack = 3;
          fiddleFear = new particula(fears, 0, 250, 150, -50);
          combatScene = 1;
          silence--;
        }
        if ( i == 3 && ultimate > 0)
        {
          moveAtack = 4;
          cuervos1 = new particula(cuervo, 0, 350, 150, -50);
          cuervos2 = new particula(cuervo, 0, 150, 150, -50);
          combatScene = 1;
          ultimate--;
        }
      }
    }
  }
}
