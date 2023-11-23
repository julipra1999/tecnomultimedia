class Estaca {
  constructor(x, y) {
    this.posX = x;
    this.posY = y;
    this.vel = 5;
    this.tam = 10;
  }
  mover() { 
    this.posY -= this.vel;
  }

  dibujar() {
    fill(255);
    ellipse(this.posX, this.posY, this.tam);
  }
}
