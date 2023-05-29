int numObstacles = 10;
obstacle[] obstaclesZone1 = new obstacle[numObstacles + 50];
obstacle[] obstaclesZone2 = new obstacle[numObstacles + 50];
obstacle[] obstaclesZone3 = new obstacle[numObstacles + 50];
float multiplier = 0;

boolean movePlayer = false;
float timeToMove = 10;

class obstacle {
  float posX;
  float posY;
  
  float ObstacleWidth;
  float ObstacleHeight;

  obstacle(float obstaclePosX, float obstaclePosY, float ow, float oh) {
    posX = obstaclePosX;
    posY = obstaclePosY;
    ObstacleWidth = ow;
    ObstacleHeight = oh;
  }
  
  void displayObstacles() {
    //fill(0);
    //rectMode(CENTER);
    //rect(posX, posY, ObstacleWidth, ObstacleHeight);
    //rectMode(CORNER);
  }
}

void UpdateObstacles()
{
  for(int i = 0; i < 15 && currentZone == 1; i++)
  {
     obstaclesZone1[i].displayObstacles();
  }
  
  for(int i = 0; i < 3 && currentZone == 2; i++)
  {
     obstaclesZone2[i].displayObstacles(); 
  }
  
  for(int i = 0; i < 18 && currentZone == 3; i++)
  {
     obstaclesZone3[i].displayObstacles(); 
  }
}

void InitializeObstacles()
{
  // ZONE 1
  for(int i = 0; i < numObstacles; i++)
  {
     obstaclesZone1[i] = new obstacle(50 + multiplier, 100 + multiplier, 120, 120);
     
     if(i == numObstacles - 8)
     {
       multiplier = 0;
     }
     else
     {
       multiplier += 50;
     }
  }
  
  multiplier = 0;
  
  for(int i = 10; i < 15; i++)
  {
    obstaclesZone1[i] = new obstacle(550 + multiplier, 20 + multiplier / 3, 120, 120);
     
     if(i == 14)
     {
       multiplier = 0;
     }
     else
     {
       multiplier += 100;
     }
  }
  
  multiplier = 0;
  
  // ZONE 2
  for(int i = 0; i < 3; i++)
  {
     obstaclesZone2[i] = new obstacle(50 + multiplier, 200 + multiplier, 120, 120);
     
     if(i == numObstacles - 1)
     {
       multiplier = 0;
     }
     else
     {
       multiplier += 50;
     }
  }
  
  multiplier = 0;
  
  // ZONE 3
  for(int i = 0; i < numObstacles; i++)
  {
     obstaclesZone3[i] = new obstacle(600 + multiplier, 370 + multiplier / 5, 120, 120);
     
     if(i == numObstacles - 1)
     {
       multiplier = 0;
     }
     else
     {
       multiplier += 70;
     }
  }
  
  // ZONE 3
  for(int i = 10; i < 13; i++)
  {
     obstaclesZone3[i] = new obstacle(100 + multiplier, 50 + multiplier, 120, 120);
     
     if(i == 12)
     {
       multiplier = 0;
     }
     else
     {
       multiplier += 80;
     }
  }
  
  for(int i = 13; i < 18; i++)
  {
     obstaclesZone3[i] = new obstacle(800 + multiplier / 5, 400 - multiplier, 120, 120);
     
     if(i == 17)
     {
       multiplier = 0;
     }
     else
     {
       multiplier += 80;
     }
  }
}

void MovePlayerBackwards()
{
  // MOVE P1 BACKWARDS COOLDOWN
  if (movePlayer == true)
  {
    timeToMove--;
    playerAlfa = -0.03;
  }
  if (timeToMove <= 0)
  {
    movePlayer = false;
    timeToMove = 10;
    playerAlfa = 0.015;
  }
}
