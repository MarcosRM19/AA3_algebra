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
  case 4:
    imageMode(CORNER);
    dani_marcos();
    break;
  case 5:
    imageMode(CORNER);
    oscar();
    break;
  case 6:
    if (counter <= 0)
    {
      //movie = new Movie(this, "baron.mov");
      // movie.loop();
      counter++;
    }
    baron_baron();
    break;
  }
}
