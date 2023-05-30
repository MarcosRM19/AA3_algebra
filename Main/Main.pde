int currentScene = 1;

float newPlayerPosX = 200;
float newPlayerPosY = 700;

float playerPosX = 200;
float playerPosY = 700;

float playerAlfa = 0.015;

float triangleP1PosX, triangleP2PosX, triangleP3PosX;
float triangleP1PosY, triangleP2PosY, triangleP3PosY;

PImage backgroundRedBuffZone, midZone, baronZone, miniFiddle, miniZed, miniManute, miniNocturne, miniMarcosDani, elmillor, miniOscar;

float zedPosX = 800;
float zedPosY = 500;

float manutePosX = 600;
float manutePosY = 200;

float nocturnePosX = 600;
float nocturnePosY = 400;

float marcosDaniPosX = 500;
float marcosDaniPosY = 500;

float oscarPosX = 300;
float oscarPosY = 300;

float elmillorPosX = 550;
float elmillorPosY = 150;

boolean zedIsDead = false;
boolean manuteIsDead = false;
boolean nocturneIsDead = false;
boolean marcosDaniDead = false;
boolean oscarIsDead = false;

float triggerPosX = 300;
float triggerPosY = 50;

float trigger2PosX = 600;
float trigger2PosY = 700;

float trigger3PosX = 400;
float trigger3PosY = 50;

float trigger4PosX = 1100;
float trigger4PosY = 700;

float currentZone = 1;

bezier_Curve curve, curve2, curve3;
interpolation_Curve Icurve, Icurve2, Icurve3, Icurve4;

void setup()
{
  size(1200, 800, P3D);

  setUpMainMapScene();
  SetUpCombatManager();
  setUpCurves();
  SetUpCurvesCalcules();
}

void draw()
{
  if (currentScene == 0)
  {
    // Start Screen
  } 
  else if (currentScene == 1)
  {
    // Main Map scene
    MainMapScene();
    CollisionManager();
  } 
  else if (currentScene == 2)
  {
    // Combat scene
    CombatManager();
  } 
  else if (currentScene == 3)
  {
    // Lose Screen
    imageMode(CORNER);
    if (counter <= 0)
    {
      movie = new Movie(this, "baron.mov");
      movie.loop();
      counter++;
    }
    baron_baron();
  }
  else if(currentScene == 4)
  {
     imageMode(CORNER);
    if (counter2 <= 0)
    {
      excavadora2000 = new Movie(this, "excavadora.mov");
      excavadora2000.loop();
      counter2++;
    }
    excavadora();
  }
}

void setUpMainMapScene()
{
  backgroundRedBuffZone = loadImage("redBuffZone.jpg");
  miniFiddle = loadImage("miniFiddle.png");
  miniManute = loadImage("miniManute.png");
  miniZed = loadImage("miniZed.png");
  miniNocturne = loadImage("miniNocturne.png");
  miniMarcosDani = loadImage("miniMarcosDani.png");
  midZone = loadImage("midZone.jpg");
  baronZone = loadImage("baronZone.jpg");
  elmillor = loadImage("elmillor.png");
  miniOscar = loadImage("oscar2.png");
  
  InitializeObstacles();
}

void MainMapScene()
{
  if (currentZone == 1)
  {
    imageMode(CORNER);
    image(backgroundRedBuffZone, 0, 0);

    CalcularManute();

    if (!zedIsDead)
    {
      imageMode(CENTER);
      image(miniZed, zedPosX, zedPosY);
    }
    
    

    ellipse(triggerPosX, triggerPosY, 30, 30);
  } 
  else if (currentZone == 2)
  {
    imageMode(CORNER);
    image(midZone, 0, 0);
    CalcularNocturne();
    

    ellipse(trigger2PosX, trigger2PosY, 30, 30);
    ellipse(trigger3PosX, trigger3PosY, 30, 30);
  } 
  else if (currentZone == 3)
  {
    imageMode(CORNER);
    image(baronZone, 0, 0);
    CalcularMivi();
    
    if (!oscarIsDead)
    {
      imageMode(CENTER);
      image(miniOscar, oscarPosX, oscarPosY);
    }

    imageMode(CENTER);
    image(elmillor, elmillorPosX, elmillorPosY);

    ellipse(trigger4PosX, trigger4PosY, 30, 30);
  }
  
  UpdateObstacles();
  MovePlayerBackwards();

  playerPosX = playerPosX + playerAlfa * (newPlayerPosX - playerPosX);
  playerPosY = playerPosY + playerAlfa * (newPlayerPosY - playerPosY);

  fill(0, 255, 0);
  triangle(triangleP1PosX, triangleP1PosY, triangleP2PosX, triangleP2PosY, triangleP3PosX, triangleP3PosY);

  imageMode(CENTER);
  image(miniFiddle, playerPosX, playerPosY);
}

void mouseClicked() {
  if (currentScene == 1)
  {
    newPlayerPosX = mouseX;
    newPlayerPosY = mouseY;

    triangleP1PosX = mouseX;
    triangleP1PosY = mouseY - 10;

    triangleP2PosX = mouseX - 10;
    triangleP2PosY = mouseY + 10;

    triangleP3PosX = mouseX + 10;
    triangleP3PosY = mouseY + 10;
  }
}
