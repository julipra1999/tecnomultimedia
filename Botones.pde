
boolean mouseBotonCircular(int x, int y, int r) {
  return dist (mouseX, mouseY, x, y) < r/2;
}
void dibujoBotones( int y) {
  textFont(fuente);
  rectMode(CENTER);
  fill(255, 49, 49);
  noStroke();
  rect( width/2, y, 200, 50, 20);
  textAlign(CENTER);
  fill(84, 25, 143);
  textSize(35);
}

void botonCircular (int x, int y, int j, String t) {
  fill(255, 49, 49);
  circle(x, y, j);
  textAlign(CENTER);
  fill(84, 25, 143);
  textSize(45);
  text(t, x, y+7);
}

void botones() {
  if (estado == 0 && mouseX>200&&mouseX<400&&mouseY>275&&mouseY<325) {//comenzar
    estado = 1;
  } else if ( estado == 0 && mouseX>200&&mouseX<400&&mouseY>350&&mouseY<400) {//creditos
    estado = 16;
  } else if ( estado == 16 && mouseX>200&&mouseX<525&&mouseY>475&&mouseY<525) {//volver al menu
    estado = 0;
  } else if ( estado == 1 && mouseBotonCircular(width/2, 550, 50)) {//llega al castillo
    estado = 2;
  } else if ( estado == 2 && mouseBotonCircular(150, 550, 50)) {//se queda en el castillo
    estado = 3;
  } else if ( estado == 2 && mouseBotonCircular(450, 550, 50)) {// se queda en un hotel
    estado = 4;
  } else if ( estado == 3 && mouseBotonCircular(width/2, 550, 50)) {// dracula es vampiro
    estado = 5;
  } else if ( estado == 4 && mouseBotonCircular(width/2, 550, 50)) {
    estado = 6;
  } else if ( estado == 5 && mouseBotonCircular(width/2, 550, 50)) {
    estado = 6;
  } else if ( estado == 6 && mouseBotonCircular(150, 550, 50)) {
    estado = 7;
  } else if ( estado == 6 && mouseBotonCircular(450, 550, 50)) {
    estado = 8;
  } else if ( estado == 7 && mouseBotonCircular(width/2, 550, 50)) {
    estado = 9;
  } else if ( estado == 8 && mouseBotonCircular(width/2, 550, 50)) {
    estado = 10;
  } else if ( estado == 9 && mouseBotonCircular(150, 550, 50)) {
    estado = 8;
  } else if ( estado == 9 && mouseBotonCircular(450, 550, 50)) {
    estado = 11;
  } else if ( estado == 10 && mouseBotonCircular(150, 550, 50)) {
    estado = 12;
  } else if ( estado == 10 && mouseBotonCircular(width/2, 550, 50)) {
    estado = 13;
  } else if ( estado == 10 && mouseBotonCircular(450, 550, 50)) {
    estado = 14;
  } else if ( estado == 11 && mouseBotonCircular(width/2, 550, 50)) {
    estado = 10;
  } else if ( estado == 12 && mouseX>200&&mouseX<400&&mouseY>525&&mouseY<575) {// Fin 1
    estado = 16;
  } else if ( estado == 13 && mouseX>200&&mouseX<400&&mouseY>525&&mouseY<575) { // Fin 2
    estado = 16;
  } else if ( estado == 14 && mouseBotonCircular(width/2, 550, 50)) {
    estado = 15;
  } else if ( estado == 15 && mouseX>200&&mouseX<400&&mouseY>525&&mouseY<575) { // Fin 3
    estado = 16;
  }
}
