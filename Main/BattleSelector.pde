void combat()
{
  switch(currentCombat)
  {
  case 1:
    imageMode(CORNER);
    combatZed();
    break;
  case 2:
    imageMode(CORNER);
    combatMorde();
    break;
  case 3:
    imageMode(CORNER);
    combatNocturne();
    break;
  case 4:
    imageMode(CORNER);
    dani_marcos();
    break;
  case 5:
    imageMode(CORNER);
    oscar();
    break;
  }
}
