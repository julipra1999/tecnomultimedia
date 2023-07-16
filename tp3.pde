PFont fuente;
int estado;
PImage[] pantalla = new PImage[17];
String[] historia = new String[15];

void setup() {
  size(600, 600);
  estado = 0; // menu
  fuente = loadFont("AngsanaNew-Bold-48.vlw");
  for ( int i = 0; i < 17; i++ ) {// carga de imagenes
    pantalla[i] = loadImage( i + ".png" );
  }
  historia = loadStrings("historia.txt");
  for ( int i = 0; i < 15; i++ ) {// carga de textos
  }
}
void draw() {
  background(pantalla[estado]);
  println(mouseX, mouseY, estado);
  pantallas();
}
void mousePressed() {
  botones();
}
