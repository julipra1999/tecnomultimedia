PImage ilusion;
int t, m;

void setup() {
  size(800, 400);
  ilusion = loadImage("ilusion.jpeg");
  m = 12 ;  // cantidad de cuadrados a dibujar
  t = 40;  //tamaño de cada cuadrado
}
void draw() {
  pushMatrix();
  translate(400, 0);
  noStroke();
  println(mouseX, mouseY);
  background(255);

  for (int i = 0; i < m; i++) {
    for (int j = 0; j < m; j++) {
      if ( (i+j)%2 == 0 ) {  //modulo% devuelve el resta de una división: 0 par, 1 impar
        fill(4, 140, 13);
      } else {
        fill(255);
      }
      rect(i*t-40, j*t-40, t, t);
      rectMode(CENTER);
      fill(255, 0, 0);
      rect(i*t+20, j*t+20, t/3, t/3 );
      fill( 0, 0, 255);
      rect(i*t+16, i*t+24, t/5, t/5 );
      rect(j*t+24, j*t+16, t/5, t/5);
      /* for (int k = 0; k < m; k++) {
       
       rectMode(CENTER);
       fill(255);
       rect(k*t+20, j*t+20, t/3, t/3 );
       for (int l = 0; l < m; l++) {
       
       rectMode(CENTER);
       fill(0);
       rect(l*t+15, i*t+25, t/6, t/6 );
       rect(l*t+25, i*t+15, t/6, t/6 );
       }*/
       }
       }
       
       
         image(ilusion, -480, 0);
       popMatrix();
       }
