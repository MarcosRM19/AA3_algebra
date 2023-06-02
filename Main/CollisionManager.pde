float vxZed, vxManute, vxNocturne, vxMarcosDani, vxOscar, vxElmillor, vxTrigger, vxTrigger2, vxTrigger3, vxTrigger4;
float vyZed, vyManute, vyNocturne, vyMarcosDani, vyOscar, vyElmillor, vyTrigger, vyTrigger2, vyTrigger3, vyTrigger4;
float moduleZed, moduleManute, moduleNocturne, moduleMarcosDani, moduleOscar, moduleElmillor, moduleTrigger, moduleTrigger2, moduleTrigger3, moduleTrigger4;

float vxObstaclesZone1, vxObstaclesZone2, vxObstaclesZone3;
float vyObstaclesZone1, vyObstaclesZone2, vyObstaclesZone3;
float moduleObstaclesZone1, moduleObstaclesZone2, moduleObstaclesZone3;

//All the colision that there are in the move scene
void CollisionManager()
{
  // WIN CONDITION COLLISION
  vxElmillor = playerPosX - elmillorPosX; // Coord X vector
  vyElmillor = playerPosY - elmillorPosY; // Coord Y vector
  moduleElmillor = sqrt(vxElmillor*vxElmillor + vyElmillor*vyElmillor); // Modulo
  
  if(moduleElmillor < 100 && currentZone == 3)
  {
    currentScene = 4;
  }
  
  
  // COLLISION WITH ENEMIES
  // Collision with enemy Zed
  vxZed = playerPosX - zedPosX; // Coord X vector
  vyZed = playerPosY - zedPosY; // Coord Y vector
  moduleZed = sqrt(vxZed*vxZed + vyZed*vyZed); // Modulo
  
  if(moduleZed < 100 && !zedIsDead && currentZone == 1)
  {
    currentScene = 2;
    currentCombat = 1;
  }
  
  // Collision with enemy Manute
  vxManute = playerPosX - manutePosX; // Coord X vector
  vyManute = playerPosY - manutePosY; // Coord Y vector
  moduleManute = sqrt(vxManute*vxManute + vyManute*vyManute); // Modulo
  
  if(moduleManute < 100 && !manuteIsDead && currentZone == 1)
  {
    currentScene = 2;
    currentCombat = 2;
  }
  
  // Collision with enemy Nocturne
  vxNocturne = playerPosX - nocturnePosX; // Coord X vector
  vyNocturne = playerPosY - nocturnePosY; // Coord Y vector
  moduleNocturne = sqrt(vxNocturne*vxNocturne + vyNocturne*vyNocturne); // Modulo
  
  if(moduleNocturne < 100 && !nocturneIsDead && currentZone == 2)
  {
    currentScene = 2;
    currentCombat = 3;
  }
  
  // Collision with enemy Marcos & Dani
  vxMarcosDani = playerPosX - marcosDaniPosX; // Coord X vector
  vyMarcosDani = playerPosY - marcosDaniPosY; // Coord Y vector
  moduleMarcosDani = sqrt(vxMarcosDani*vxMarcosDani + vyMarcosDani*vyMarcosDani); // Modulo
  
  if(moduleMarcosDani < 100 && !marcosDaniDead && currentZone == 3)
  {
    currentScene = 2;
    currentCombat = 4;
  }
  
  // Collision with enemy Oscar
  vxOscar = playerPosX - oscarPosX; // Coord X vector
  vyOscar = playerPosY - oscarPosY; // Coord Y vector
  moduleOscar = sqrt(vxOscar*vxOscar + vyOscar*vyOscar); // Modulo
  
  if(moduleOscar < 100 && !oscarIsDead && currentZone == 3)
  {
    currentScene = 2;
    currentCombat = 5;
  }

  
  // COLLISION WITH TRIGGERS
  // Collision with trigger to Zone 2
  vxTrigger = playerPosX - triggerPosX; // Coord X vector
  vyTrigger = playerPosY - triggerPosY; // Coord Y vector
  moduleTrigger = sqrt(vxTrigger*vxTrigger + vyTrigger*vyTrigger); // Modulo
  
  if(moduleTrigger < 150 && currentZone == 1)
  {
    currentZone = 2;
    playerPosY = height - 50;
    newPlayerPosX = 300;
    newPlayerPosY = height - 50;
  }
  
  // Collision with trigger Back to Zone 1
  vxTrigger2 = playerPosX - trigger2PosX; // Coord X vector
  vyTrigger2 = playerPosY - trigger2PosY; // Coord Y vector
  moduleTrigger2 = sqrt(vxTrigger2*vxTrigger2 + vyTrigger2*vyTrigger2); // Modulo
  
  if(moduleTrigger2 < 150 && currentZone == 2)
  {
    currentZone = 1;
    playerPosY = 30;
  }
  
  // Collision with trigger to Zone 3
  vxTrigger3 = playerPosX - trigger3PosX; // Coord X vector
  vyTrigger3 = playerPosY - trigger3PosY; // Coord Y vector
  moduleTrigger3 = sqrt(vxTrigger3*vxTrigger3 + vyTrigger3*vyTrigger3); // Modulo
  
  if(moduleTrigger3 < 150 && currentZone == 2)
  {
    currentZone = 3;
    playerPosX = 700;
    playerPosY = height - 50;
    newPlayerPosX = 700;
    newPlayerPosY = height - 50;
  }
  
  // Collision with trigger back to Zone 2
  vxTrigger4 = playerPosX - trigger4PosX; // Coord X vector
  vyTrigger4 = playerPosY - trigger4PosY; // Coord Y vector
  moduleTrigger4 = sqrt(vxTrigger4*vxTrigger4 + vyTrigger4*vyTrigger4); // Modulo
  
  if(moduleTrigger4 < 150 && currentZone == 3)
  {
    currentZone = 2;
    playerPosX = 1000;
    playerPosY = 50;
    newPlayerPosX = 1000;
    newPlayerPosY = 50;
  }
  
  
  // OBSTACLE COLLISIONS //
  
  // OBSTACLE COLLISIONS ZONE 1
  for(int i = 0; i < 15; i++)
  {
    vxObstaclesZone1 = playerPosX - obstaclesZone1[i].posX; // Coord X vector
    vyObstaclesZone1 = playerPosY - obstaclesZone1[i].posY; // Coord Y vector
    moduleObstaclesZone1 = sqrt(vxObstaclesZone1*vxObstaclesZone1 + vyObstaclesZone1*vyObstaclesZone1); // Modulo
    
    if(moduleObstaclesZone1 < 120 && currentZone == 1)
    {
      movePlayer = true;
    }
  }
  
  // OBSTACLE COLLISIONS ZONE 2
  for(int i = 0; i < 3; i++)
  {
    vxObstaclesZone2 = playerPosX - obstaclesZone2[i].posX; // Coord X vector
    vyObstaclesZone2 = playerPosY - obstaclesZone2[i].posY; // Coord Y vector
    moduleObstaclesZone2 = sqrt(vxObstaclesZone2*vxObstaclesZone2 + vyObstaclesZone2*vyObstaclesZone2); // Modulo
    
    if(moduleObstaclesZone2 < 120 && currentZone == 2)
    {
      movePlayer = true;
    }
  }
  
  // OBSTACLE COLLISIONS ZONE 3
  for(int i = 0; i < 13; i++)
  {
    vxObstaclesZone3 = playerPosX - obstaclesZone3[i].posX; // Coord X vector
    vyObstaclesZone3 = playerPosY - obstaclesZone3[i].posY; // Coord Y vector
    moduleObstaclesZone3 = sqrt(vxObstaclesZone3*vxObstaclesZone3 + vyObstaclesZone3*vyObstaclesZone3); // Modulo
    
    if(moduleObstaclesZone3 < 120 && currentZone == 3)
    {
      movePlayer = true;
    }
  }
}
