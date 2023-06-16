PImage ilusion;
int t, m;
void setup() {
  size(800, 400);
  ilusion = loadImage("ilusion.jpeg");
  m = 12 ;  // cantidad de cuadrados a dibujar
  t = 40;  //tamaño de cada cuadrado  // 60
}
void draw() {
  pushMatrix();
  translate(400, 0);
  noStroke();
  println(mouseX, mouseY);
  background(255);

  for ( int i = 0; i < m; i++ ) {
    for ( int j = 0; j < m; j++ ) {
      if ( (i+j)%2 == 0 ) {  //modulo% devuelve el resta de una división: 0 par, 1 impar
        fill( 4, 140, 13 );
      } else {
        fill( 255 );
      }
      rect(i*t-40, j*t-40, t, t );
    }
  }
  image(ilusion, -480,0);
  popMatrix();
}
