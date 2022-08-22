class Boton {

  //Propiedades
  float x, y, ancho, alto, size;
  String label;

  //---------------------------------

  //Constructor
  Boton(String label_, float x_, float y_, float ancho_, float alto_, float size_) {
    x = x_;
    y = y_;
    ancho = ancho_;
    alto = alto_;
    label = label_;
    size = size_;
  }

  //---------------------------------

  //Metodos
  void actualizar() {
    dibujar();
  }

  void dibujar() {
    pushMatrix();
    pushStyle();
    translate(x, y);
    noStroke();
    if (mouseEstaEncima()) {
      fill(#5D07D8);
    } else {
      fill(255);
    }
    rectMode(CENTER);
    rect(0, 0, ancho, alto, 8);
    //Escribir etiqueta
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(size);
    text( label, 0, 0);
    popStyle();
    popMatrix();
  }

  boolean mouseEstaEncima() {
    if (mouseX > x - ancho/2 && mouseX < x+ancho/2
      && mouseY > y - alto/2 && mouseY < y+alto/2) {
      return true;
    } else {
      return false;
    }
  }
}
