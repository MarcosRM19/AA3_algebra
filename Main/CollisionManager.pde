float vxZed, vxTrigger, vxTrigger2, vxTrigger3, vxTrigger4;
float vyZed, vyTrigger, vyTrigger2, vyTrigger3, vyTrigger4;
float moduleZed, moduleTrigger, moduleTrigger2, moduleTrigger3, moduleTrigger4;

void CollisionManager()
{
  // Collision with enemy Zed
  vxZed = playerPosX - zedPosX; // Coord X vector
  vyZed = playerPosY - zedPosY; // Coord Y vector
  moduleZed = sqrt(vxZed*vxZed + vyZed*vyZed); // Modulo
  
  if(moduleZed < 100 && !zedIsDead && currentZone == 1)
  {
    currentScene = 2;
  }
  
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
}
