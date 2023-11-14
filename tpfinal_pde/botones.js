class Botones {
  /* constructor() {
   this.x = x;
   this.y = y;
   this.j = j;
   }*/

  dibujar(x, y, j) {
    fill(255, 49, 49);
    circle(x, y, j);
    textAlign(CENTER);
    fill(84, 25, 143);
    textSize(45);
    //text(t, x, y+7);
  }
  dibujarMenu(y) {
    //textFont(fuente);
    rectMode(CENTER);
    fill(255, 49, 49);
    noStroke();
    rect(width/2, y, 200, 50, 20);
    textAlign(CENTER);
    fill(84, 25, 143);
    textSize(35);
  }
  mouseSobreBoton(x, y, j) {
    let distancia = dist(mouseX, mouseY, x, y);
    return distancia<j/2;
  }
  creditos() {
    textAlign(CENTER);
    textSize(40);
    fill(255, 49, 49);
    text("ALUMNA \n JULIETA EDELWEISS PRATTI \n \n TRABAJO PRÁCTICO Nº6 \n TECNOLOGÍA MULTIMEDIAL \n PROF. MATIAS JAUREGUI LORDA \n AUTOR ORIGINAL \n BREM STOKER", width/2, 200);
    fill(84, 25, 143);
    textSize(30);
    text("VOLVER AL MENÚ", width/2, 558);
  }
}
