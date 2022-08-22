class Fondo {

  //Propiedades
  PImage fondoPant;
  float x, y, ancho, alto;
  String tipo;

  //Constructor
  Fondo(String tipoPant) {

    tipo = tipoPant;

    fondoPant = loadImage(tipo + ".png");
  }

  //Metodos
  void dibujarFondo(float x_, float y_, float ancho_, float alto_) {
    x = x_;
    y = y_;
    ancho = ancho_;
    alto = alto_;
    image(fondoPant, x, y, ancho, alto);
  }
}
