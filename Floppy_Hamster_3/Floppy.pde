//hamster = new Hamster(80);
/*class Floppy {
  float x, y;

  int begin;
  int duracion;
  int time;

  boolean moverDer, moverIzq, termino;

  //setup
  Floppy(float x_, float y_) {
    x = x_;
    y = y_;

    //Contador
    time = duracion = 20;

    termino = false;
  }

  //getters y setters
  void setBegin(int tiempo_) {
    begin = tiempo_;
  }

  boolean getTermino() {
    return termino;
  }

  //MÉTODOS (funciones)

  void dibujar() {
  case "inicializaJuego":

    hamster = new Hamster(80);
    hamster.inicializar(140, 96);
    mundo.add(hamster);

    //contador
    if (time > 0) {
      time = duracion -(millis()-begin)/1000;
      text("TIEMPO: "+ time, 600, 40);
    } else {
      text("TIEMPO: "+ time, 600, 40);
      termino = true;
    }
    break;
  }
}

void reciclarVar() {
  time = duracion = 20;
  begin=millis();
  termino=false;
}

//COLISION
void colision( Fuego[] fu, Escenario e, Escenario fin) {
  float p = e.getEscena();
  if (p==1) {

    for (int i = 0; i < fu.length; i++) {
      float x_fuego = fu[i].getX();
      float y_fuego = fu[i].getY();
      //hasta acá posiciones de x e y de cada fuego
      float d = dist (x_fuego, y_fuego, x, y-t/7);

      //calcular colisines
      if (d<(t/3.5)) {
        //si colisiona, evento:
        vidas--;
        println("COLISIÓN "+ vidas);
        fu[i].reciclar();
      }
    }
  }
}

}




//contador
if (time > 0) {
  time = duracion -(millis()-begin)/1000;
  text("TIEMPO: "+ time, 600, 40);
} else {
  text("TIEMPO: "+ time, 600, 40);
  termino = true;
}

void reciclarVar() {
  time = duracion = 20;
  begin=millis();
  termino=false;
}

*/
