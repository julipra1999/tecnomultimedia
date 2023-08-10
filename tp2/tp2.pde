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
  //  noStroke();
  println(mouseX, mouseY);
  rectMode(CENTER);
  // background(255);
  // cuadrados de fondo
  for (int i = 0; i < m; i++) {
    for (int j = 0; j < m; j++) {
      if ((i+j)%2 == 0) {  //modulo% devuelve el resta de una división: 0 par, 1 impar
        fill(4, 140, 13);
      } else {
        fill(255);
      }
      rect(i*t-40, j*t-40, t, t );
    }
  }
  rotate(radians (45));
  translate(-110, -250);

  // cuadrados chicos
  for (int i = 0; i < m; i++) {
    for (int j = 0; j < m; j++) {
      fill(255);
      rect(i*t+20, j*t+20, t/2.5, t/2.5 );
      fill(0);
      rect(i*t+16, t*j+24, t/5, t/5 );
      rect(i*t+24, t*j+16, t/5, t/5);
    }
  }

  popMatrix();
  image(ilusion, -80, 0);
}
