int currentScene = 1;

float newPlayerPosX = 0;
float newPlayerPosY = 0;

float playerPosX = 0;
float playerPosY = 0;

float playerAlfa = 0.025;

float triangleP1PosX, triangleP2PosX, triangleP3PosX;
float triangleP1PosY, triangleP2PosY, triangleP3PosY;

PImage backgroundRedBuffZone, miniFiddle, miniZed;

float zedPosX = 600;
float zedPosY = 500;

boolean zedIsDead = false;

void setup()
{
  size(1200, 800, P3D);
  
  setUpMainMapScene();
  SetUpCombatManager();
}

void draw()
{
  if(currentScene == 0)
  {
    // Start Screen
  }
  else if(currentScene == 1)
  {
    // Main Map scene
    MainMapScene();
    CollisionManager();
  }
  else if(currentScene == 2)
  {
    // Combat scene
    CombatManager();
  }
  else if(currentScene == 3)
  {
    // Win - Lose Screen
  }
}

void setUpMainMapScene()
{
  backgroundRedBuffZone = loadImage("redBuffZone.jpg");
  miniFiddle = loadImage("miniFiddle.png");
  miniZed = loadImage("miniZed.png");
}

void MainMapScene()
{
  image(backgroundRedBuffZone, 0, 0);
  
  playerPosX = playerPosX + playerAlfa * (newPlayerPosX - playerPosX);
  playerPosY = playerPosY + playerAlfa * (newPlayerPosY - playerPosY); 
    
  fill(0, 255, 0);
  triangle(triangleP1PosX, triangleP1PosY, triangleP2PosX, triangleP2PosY, triangleP3PosX, triangleP3PosY);
  
  image(miniFiddle, playerPosX, playerPosY);
  
  if(!zedIsDead)
  {
    image(miniZed, zedPosX, zedPosY); 
  }
}

void mouseClicked(){
  newPlayerPosX = mouseX;
  newPlayerPosY = mouseY;
  
  triangleP1PosX = mouseX;
  triangleP1PosY = mouseY - 10;
  
  triangleP2PosX = mouseX - 10;
  triangleP2PosY = mouseY + 10;
  
  triangleP3PosX = mouseX + 10;
  triangleP3PosY = mouseY + 10;
}
