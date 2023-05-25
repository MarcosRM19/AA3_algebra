int currentScene = 1;

float newPlayerPosX = 0;
float newPlayerPosY = 0;

float playerPosX = 0;
float playerPosY = 0;

float playerAlfa = 0.025;

float triangleP1PosX, triangleP2PosX, triangleP3PosX;
float triangleP1PosY, triangleP2PosY, triangleP3PosY;

void setup()
{
  size(1200, 800, P3D);
  
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

void MainMapScene()
{
  background(255);
  
  playerPosX = playerPosX + playerAlfa * (newPlayerPosX - playerPosX);
  playerPosY = playerPosY + playerAlfa * (newPlayerPosY - playerPosY); 
    
  fill(0, 255, 0);
  triangle(triangleP1PosX, triangleP1PosY, triangleP2PosX, triangleP2PosY, triangleP3PosX, triangleP3PosY);
  
  fill(255, 0, 0);
  ellipse(playerPosX, playerPosY, 50, 50);
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
