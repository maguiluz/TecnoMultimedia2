//class Plataforma rectangular
class Plataforma extends FBox
{
  //FBox barra;
  
  Plataforma(float _w, float _h)
  {
    //barra = new FBox(_w, _h);
    super(_w, _h);
  }
  
  void inicializar(float _x, float _y)
  {
   /*barra.setPosition(_x, _y);
    barra.setName ("plataforma");
    barra.setStatic(true);*/
    setPosition(_x, _y);
    setName ("plataforma");
    setStatic(true);
  }
}

//Barra estática
/* FBox barra = new FBox (200,40);
 barra.setPosition(width/2,height/2+100);
 barra.setStatic(true);
 mundo.add(barra);
 */
