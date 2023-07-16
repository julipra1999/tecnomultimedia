void creditos() {
  textAlign(CENTER);
  textSize(40);
  fill(255, 49, 49);
  text("ALUMNA \n JULIETA EDELWEISS PRATTI \n \n TRABAJO PRÁCTICO Nº3 \n TECNOLOGÍA MULTIMEDIAL \n PROF. MATIAS JAUREGUI LORDA \n AUTOR ORIGINAL \n BREM STOKER", width/2, 200);
  dibujoBotones(500);
  // fill(84, 25, 143);
  textSize(30);
  text("VOLVER AL MENÚ", width/2, 508);
}
void historia() {
  rectMode(CENTER);
  fill(0, 255, 0);
  //strokeWeight(10);
  fill(0);
  rect(width/2, 490, 580, 200, 20);//fondo de historia
  textAlign(CENTER, TOP);
  fill(255, 0, 0);
  textSize(35);
  text(historia[estado], width/2, 490, 570, 180);
}
void pantallas() {
  if (estado == 0) { // menu
    dibujoBotones(300);
    dibujoBotones(375);
    text( "COMENZAR", width/2, height/2+10);
    text( "CRÉDITOS", width/2, height/2+85);
  }
  if (estado > 0 && estado < 16) {// visualizaacion de las pantallas
    historia();
  }
  if (estado == 2 || estado == 6 || estado == 9 ) { // cambio de pantallas
    botonCircular(150, 550, 50, "A");
    botonCircular(450, 550, 50, "B");
  }
  if (estado == 1 || estado == 3 || estado == 4|| estado == 5 || estado == 7 || estado == 8 || estado == 11 || estado == 14) {
    botonCircular(width/2, 550, 50, "");
    rect(width/2-5, 550, 20, 10);// flecha continuar
    triangle(315, 550, 305, 540, 305, 560);
  }
  if (estado == 12|| estado == 13 || estado == 15) {
    dibujoBotones(550);
    text("CRÉDITOS", width/2, 560);
  }
  if (estado == 10) {
    botonCircular(150, 550, 50, "A");
    botonCircular(width/2, 550, 50, "B");
    botonCircular(450, 550, 50, "C");
  }
  if (estado == 16) {
    creditos();
  }
}
