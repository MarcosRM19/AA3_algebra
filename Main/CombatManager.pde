import processing.video.*;

PImage fiddle, zed, backGround, manuteBackGround, nocturneBackGround, shuriken, cuervo, fears, fiddleW, manute, garras, bonk, nocturne, nocturneQ, nocturneE, Mivi,DaniYMarcos, oscar, malo, Mente, nombres, pixars;
PVector[] atacks;
int m_width, m_height;
int fear, silence, ultimate, recover;
int maxFear, maxSilence, maxUltimate, maxRecover;
int moveAtack = 0;
int textToPrint = 0;
int combatScene= 0;
int timer;
int maxTimer, changeTime;
float fiddleHealth;
float maxHealth;
float enemyHealth;
boolean silenciate;
float randomAtack;
int currentCombat = 4;
particula shurikens;
particula shurikens1;
particula shurikens2;
particula cuervos;
particula cuervos1;
particula cuervos2;
particula fiddleFear;
particula fiddlew;
particula garra;
particula mazazo;
particula susto;
particula stun;
particula mivi;
particula mente;
particula mal;
particula pixar;
particula hoja;
Movie movie;
Movie excavadora2000;
int counter = 0;
int counter2 = 0;

void SetUpCombatManager()
{
  backGround = loadImage("jonia.jpg");
  shuriken = loadImage("shuriken.png");
  fears = loadImage("fear.png");
  fiddleW = loadImage("fiddleW.png");
  manuteBackGround = loadImage("jonia.jpg");
  nocturneBackGround = loadImage("jonia.jpg");
  nocturne = loadImage("nocturne.png");
  manute = loadImage("manute.png");
  garras = loadImage("mazazo.png");
  bonk = loadImage("mazita.png");
  nocturneQ = loadImage("nocturneQ.png");
  nocturneE = loadImage("stun.png");
  DaniYMarcos = loadImage("DaniYMarcos.png");
  Mivi = loadImage("mivi.png");
  malo = loadImage("-1.png");
  Mente = loadImage("cell.png");
  oscar = loadImage("Oscar.png");
  nombres = loadImage("nombress.PNG");
  pixars = loadImage("pixar.png");
  background(48, 111, 38);
  maxFear = 15;
  maxSilence = 10;
  maxUltimate = 5;
  maxRecover = 30;
  fear = maxFear;
  silence = maxSilence;
  ultimate = maxUltimate;
  recover = maxRecover;
  timer = 0;
  maxTimer = 0;
  changeTime = 2;
  maxHealth = 250;
  enemyHealth = maxHealth;
  fiddleHealth = maxHealth;
  randomAtack = 0;
  silenciate = false;
  fiddle = loadImage("fiddle.png");
  zed = loadImage("zed.png");
  cuervo = loadImage("cuervo.png");
  m_width = 600;
  m_height = 75;
  atacks = new PVector [4];
  for (int i = 0; i<4; i++)
  {
    float x, y;
    if (i == 1 || i == 3)
      x = 600;
    else
      x = 0;
    if (i <2)
      y = 625;
    else
      y = 700;

    atacks[i] = new PVector(x, y);
  }
}

void CombatManager()
{
  if (currentCombat != 2 && currentCombat != 3)
  {
    image(backGround, 0, -90);
  } 
  else if(currentCombat == 2)
  {
    for (int i = 0; i<manuteBackGround.width; i++)
    {
      for (int j = 0; j<manuteBackGround.height; j++)
      {
        color colorPixel = manuteBackGround.get(i, j);
        float r = red(colorPixel);
        float g = green(colorPixel);
        float b = blue(colorPixel);
        color colorPixelNuevo = color(r*0.35, g, b);

        manuteBackGround.set(i, j, colorPixelNuevo);
      }
    }
    image(manuteBackGround, 0, -90);
  }
  else if(currentCombat == 3)
  {
     for (int i = 0; i< nocturneBackGround.width; i++)
    {
      for (int j = 0; j< nocturneBackGround.height; j++)
      {
        color colorPixel =  nocturneBackGround.get(i, j);
        float r = red(colorPixel);
        float g = green(colorPixel);
        float b = blue(colorPixel);
        float promedio = 0.299*r + 0.587*g + 0.114*b;
        color colorPixelNuevo = color(promedio, promedio, promedio);

         nocturneBackGround.set(i, j, colorPixelNuevo);
      }
    }
    image( nocturneBackGround, 0, -90);
  }
  
  combat();

  if (enemyHealth <= 0)
  {
    enemyHealth = 0;
  }
  if (fiddleHealth <= 0)
  {
    fiddleHealth = 0;
  }
  if (fiddleHealth >= maxHealth)
  {
    fiddleHealth = maxHealth;
  }
}
