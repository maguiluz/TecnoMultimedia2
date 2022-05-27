//TP1 Etapa 2
//Alumnas: Santellan Malena Fabiana, Calizaya Angela, Ibañez Magali. 

//Libreria de osc
import oscP5.*;

OscP5 osc;

PGraphics pgcaminante;
PGraphics pgtrazos;

Dir_y_Vel mouse;
ArrayList<Caminante> caminantes;
GestorDeInteracion g;
Trazos pincel;
Paleta p;
Caminante c;
PImage trazoL, trazoC, silencio, Paletafon;

float posX;
float desx;

ArrayList<Trazo>listaT;

float xOrigen;
float xDestino;
float y;
float f;



void setup () {
                
  osc= new OscP5(this,12345);
  
  pgcaminante = createGraphics(800, 800);
  pgtrazos = createGraphics(800, 800);

  Paletafon= loadImage ("paletaFon.png");
  size (800, 800);
  background(255);
  /*image(Paletafon, 0, 0, 800, 800);
  imageMode(CENTER);*/

  //Imagenes de los trazos
  /*trazoL = loadImage ("trazo1.png");
  trazoC = loadImage ("trazo2.png");
  silencio =  loadImage ("brush02.png");*/
  
  //Array de los trazos
    listaT = new ArrayList<Trazo>();

  p = new Paleta("paletaLinea.png");
  g = new GestorDeInteracion();
  pincel = new Trazos();
  c  = new Caminante(p.darUnColor());

  posX = 820.0; //posicion inicial de las figuras

  mouse = new Dir_y_Vel();

  caminantes = new ArrayList<Caminante>();
  for (int i=0; i<1; i++) {
    caminantes.add(new Caminante(p.darUnColor() ));
  }
  
  desx = -50;
}

void draw () {
  g.actualizar();

  for (Caminante c : caminantes) {
    c.dibujar();
    c.mover();
    c.rebote();
    c.cambiarColor(p.darUnColor());
    c.dibujarRelacion(caminantes);
  }
  pgcaminante.beginDraw();
  c.dibujar();

  pgcaminante.endDraw();

  pgtrazos.beginDraw();
  
  pgtrazos.endDraw();
  image(pgcaminante, 0, 0);
  

  if (frameCount%30==0) {
    //resetear el fondo, borrar los trazos viejos
    background(50);
    dibujarListaT();
  }
  actualizarPosTrazos();
  insertarTrazo();
}

void dibujarListaT(){
  for(int i = 0; i<listaT.size(); i++){
       listaT.get(i).dibujarTrazo();
       
  }
}
void actualizarPosTrazos(){
   for(int i = 0; i<listaT.size(); i++){
       if(!listaT.get(i).actualizarPos()){//si retorna false elimino el elemento
         listaT.remove(i);
       }
       
  }
}
void insertarTrazo(){
  //el dibujo se hace cada 20 frames, hasta 40 frames. 40%20
   if (g.movLargo) {
      listaT.add(new Trazo(1,pincel.getpcalidos().darUnColor(),pincel.getTrazos()));
   } else if (g.movCorto) {
     listaT.add(new Trazo(2,pincel.getpfrios().darUnColor(),pincel.getTrazos()));
     } else if (g.quieto) {
       listaT.add(new Trazo(3,pincel.getpcalidos().darUnColor(),pincel.getTrazos()));
     }
}

void oscEvent(OscMessage m){
  println (m);
}
