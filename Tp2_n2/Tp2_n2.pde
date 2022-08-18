import fisica.*;
FWorld mundo;
PImage grilla;

void setup() {
  size(1600, 900);
  Fisica.init(this);
  mundo = new FWorld();
  mundo.setEdges(color(255));

  //img_hamster = loadImage("hamster.png");

  grilla = loadImage( "grilla.jpg");
  
  //-----------------------------------------------------------
  //Barra estática
  //Base 1 (1 - 11)
  Plataforma base1 = new Plataforma(150, 30);
  base1.inicializar (80, 145);
  mundo.add(base1/*.barra*/);
  
  //base 2 (1 - 31)
  Plataforma base2 = new Plataforma(150, 30);
  base2.inicializar (80, 465);
  mundo.add(base2/*.barra*/);
  
  //base 3 (10 - 310)
  Plataforma base3 = new Plataforma(150, 30);
  base3.inicializar (1515, 335);
  mundo.add(base3/*.barra*/);
  
  //base 4 (6 7 - 46 47)
  Plataforma base4 = new Plataforma(150, 30);
  base4.inicializar (950, 560);
  mundo.add(base4/*.barra*/);
  
  //base 5 (4 5 - 44 45)
  Plataforma base5 = new Plataforma(150, 30);
  base5.inicializar (600, 560);
  mundo.add(base5/*.barra*/);
  
  //base 6 (9 - 39)
  Plataforma base6 = new Plataforma(150, 30);
  base6.inicializar (1310, 495);
  mundo.add(base6/*.barra*/);
  
 /* //base 7 (5 6  - 16)
  Plataforma base7 = new Plataforma(150, 30);
  base7.inicializar (1310, 495);
  mundo.add(base7/*.barra*/
  //-----------------------------------------------------------
  //Círculos estáticos
  //baseC 1 (6 - 46)
  Plat_Circular baseC1 = new Plat_Circular(30);
  baseC1.inicializar (800,480 );
  mundo.add(baseC1/*.barra*/);
  
  //baseC 2 (6 - 46)
  Plat_Circular baseC2 = new Plat_Circular(60);
  baseC2.inicializar (510, 400);
  mundo.add(baseC2/*.barra*/);
  
  //-----------------------------------------------------------
  //Barra que gira
  //Base 1 (3 - 23)
  PlatGira pgira1 = new PlatGira(150, 30);
  pgira1.inicializar(400, 275);
  mundo.add(pgira1.ancla);
  mundo.add(pgira1.movimiento);
  mundo.add(pgira1.revolute);
  
  //Base 2 (6- 26)
  PlatGira pgira2 = new PlatGira(150, 30);
  pgira2.inicializar(880, 240);
  mundo.add(pgira2.ancla);
  mundo.add(pgira2.movimiento);
  mundo.add(pgira2.revolute);
  
  //Base 3 (7 - 27)
  PlatGira pgira3 = new PlatGira(150, 30);
  pgira3.inicializar(1045, 240);
  mundo.add(pgira3.ancla);
  mundo.add(pgira3.movimiento);
  mundo.add(pgira3.revolute);
  
  //Base 4 (8 9 - 58 59)
  PlatGira pgira4 = new PlatGira(150, 30);
  pgira4.inicializar(1250, 655);
  mundo.add(pgira4.ancla);
  mundo.add(pgira4.movimiento);
  mundo.add(pgira4.revolute);

  //-----------------------------------------------------------
  //Bola demoledora / Wrecking ball
  BolaDemoler bolDem = new BolaDemoler(40, 40);
  bolDem.inicializar(width/2, 380);
  mundo.add(bolDem.eje);
  mundo.add(bolDem.bola);
  mundo.add(bolDem.cadena);

/*//-----------------------------------------------------------
  //Barra que se mueve
  FBox barMov = new FBox (200, 40);
  //var px = 400 + 100 * Math.sin(counter);
  //barMov.setVelocity( px.position.x, 0);
  barMov.setVelocity(10, 5);
  barMov.adjustVelocity(20, 10);
  barMov.setPosition(width/2, height/2+100);
  barMov.setStatic(true);
  mundo.add(barMov);*/

  //-----------------------------------------------------------
  //Bola de boliche
  //bolBol 1 (1 - 31)
  BolaBol bolaBol1 = new BolaBol(70);
  bolaBol1.inicializar(80, 410);
  mundo.add(bolaBol1.bolaBol);
  
  //bolBol 2 (9 - 39)
  BolaBol bolaBol2 = new BolaBol(70);
  bolaBol2.inicializar(1300, 440);
  mundo.add(bolaBol2.bolaBol);

/*//-----------------------------------------------------------
  //Plataforma rebote
  PlatRebo platRebo = new PlatRebo(200, 40);
  platRebo.inicializar(width/2+300, height/2+100);
  mundo.add(platRebo.platRebo);*/
}

void draw() {
  background(255);
  image(grilla,0,0,800,800);
  image(grilla,width/2,0,800,800);
   
  mundo.step();
  mundo.drawDebug();

  println(mouseX, mouseY);

  //colorMode(255,70);
  
}
