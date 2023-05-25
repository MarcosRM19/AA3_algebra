float vxZed;
float vyZed;
float moduleZed;

void CollisionManager()
{
  vxZed = playerPosX - zedPosX; // Coord X vector
  vyZed = playerPosY - zedPosY; // Coord Y vector
  moduleZed = sqrt(vxZed*vxZed + vyZed*vyZed); // Modulo
  
  if(moduleZed < 150 && !zedIsDead)
  {
    currentScene = 2;
  }
}
