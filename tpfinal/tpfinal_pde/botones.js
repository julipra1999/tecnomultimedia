class Botones {
  constructor(x, y, j) {
    this.x = x;
    this.y = y;
    this.j = j;
  }

  dibujar() {
    fill(255, 49, 49);
    circle(this.x, this.y, this.j);
    /* textAlign(CENTER);
     fill(84, 25, 143);
     textSize(45);
     text(t, x, y+7);*/
  }
  dibujarMenu(y) {
    textFont(fuente);
    rectMode(CENTER);
    fill(255, 49, 49);
    noStroke();
    rect(width/2, y, 200, 50, 20);
    textAlign(CENTER);
    fill(84, 25, 143);
    textSize(35);
  }
}
