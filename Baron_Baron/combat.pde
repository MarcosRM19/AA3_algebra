void combat()
{
  switch(currentCombat)
  {
  case 1:
    combatZed();
    break;
  case 2:
    combatMorde();
    break;
  case 3:
    combatNocturne();
  case 4:
    dani_marcos();
    break;
  case 5:
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
