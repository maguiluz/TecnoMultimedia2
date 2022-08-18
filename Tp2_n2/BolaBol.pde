class BolaBol
{
  FCircle bolaBol;

  BolaBol(float _r)
  {
    bolaBol = new FCircle(_r);
  }

  void inicializar(float _x, float _y)
  {

    bolaBol.setPosition(_x, _y);
    bolaBol.setDensity(5);
    
  }
}

//Bola de boliche
 /* FCircle bolaBol = new FCircle (70);
  bolaBol.setPosition(width/2+100,height/2+150);
  bolaBol.setDensity(5);
  mundo.add(bolaBol);
  */
