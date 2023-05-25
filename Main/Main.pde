int currentScene = 1;
float playerPosX = 0;
float playerPosY = 0;

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
  
  fill(255, 0, 0);
  ellipse(playerPosX, playerPosY, 50, 50);
}

void mouseClicked(){
  playerPosX = mouseX;
  playerPosY = mouseY;
}
