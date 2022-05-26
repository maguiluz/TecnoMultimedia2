//TP1 Etapa 2
//Alumnas: Santellan Malena Fabiana, Calizaya Angela, Ibañez Magali. 

//Libreria de osc
import oscP5.*;

OscP5 osc;

PGraphics pgCaminante;
PGraphics pgTrazos;
PGraphics pgFondo;

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

  Paletafon= loadImage ("paletaFon.png");
  size (800, 800);
  /*background(255);
  image(Paletafon, 0, 0, 800, 800);
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
  
  //PGrafics
    pgCaminante = createGraphics(width, height);
    pgCaminante.beginDraw();
    pgCaminante.endDraw();
    pgTrazos = createGraphics(width, height);
    pgTrazos.beginDraw();
    pgTrazos.endDraw();
}

void draw () {
  g.actualizar();
  
  if (frameCount%20==0) {
    pgTrazos.beginDraw();
    //resetear el fondo, borrar los trazos viejos
    //pgTrazos.clear();
    //pgTrazos.background(51);
    pgTrazos.image(Paletafon, width/2, height/2, 800, 800);
    pgTrazos.imageMode(CENTER);
    dibujarListaT();
    pgTrazos.endDraw();
    
    image(pgTrazos, 0, 0);
  }
  actualizarPosTrazos();
  insertarTrazo();
  
  
  for (Caminante c : caminantes) {
    pgCaminante.beginDraw();
    c.dibujar();
    c.mover();
    c.rebote();
    c.cambiarColor(p.darUnColor());
    c.dibujarRelacion(caminantes);
    pgCaminante.endDraw();
    
    image(pgCaminante, 0, 0);
  }
}

void dibujarListaT(){
  for(int i = 0; i<listaT.size(); i++){
       listaT.get(i).dibujarTrazo(pgTrazos);
       
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
