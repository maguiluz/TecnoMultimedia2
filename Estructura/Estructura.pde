
Fondo []fondo = new Fondo [3];

int pantalla = 0;

Boton botonIniciar, botonCredito;

void setup(){
  size(1600, 720);
  
  //Fondos de aventura
    for (int i = 0; i < fondo.length; i++) {
      fondo[i] = new Fondo("Pant_" + i);
    }
    
  //Botones
    //botonIniciar = new Boton("Iniciar", width/2, 200, 200, 80, 35);
    //botonCredito = new Boton("Créditos", 70, 360, 80, 70, 25);
    
}

void draw(){
    // println(pantalla);
    switch(pantalla) {
    case 0:
      //Fondo
      fondo[0].dibujarFondo(0, 0, width, height);

      //botones INICIAR/Créditos
      //botonIniciar.actualizar();
      //botonCredito.actualizar();
      break;

    case 1:
      //Fondo
      fondo[1].dibujarFondo(0, 0, width, height);
      break;

    case 2:
      //Fondo
      fondo[2].dibujarFondo(0, 0, width, height);
      
      break;
    }
}

void click(){
    switch(pantalla) {
    case 0:
      println("pantalla = 0");
      if (botonIniciar.mouseEstaEncima()) {
        background(0);
        //pantalla = 1;
      } else if (botonCredito.mouseEstaEncima()) {
        background(255);
        //pantalla = 26;
      }
      break;
    /*case 1:
      println("pantalla = 1");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 2;
      }
      break;
    case 2:
      println("pantalla = 2");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 3;
      }
      break;
    case 3:
      println("pantalla = 3");
      if (botonSig.mouseEstaEncima()) {
        pantalla = 4;
      }
      break;*/
  }
}
