class Jhon {
  constructor() {
    this.vida = 3;
    this.posX = mouseX;
    this.posY = mouseY;
    this.mov = 1;
  }

  dibujar() {
    noCursor();
    if (this.vida > 0) {
      this.posX = lerp(this.posX, mouseX, this.mov);
      this.posY = lerp(this.posY, mouseY, this.mov);
      rectMode(CENTER);
      fill(0, 255, 0);
      rect(this.posX, this.posY, 50, 50);
    }
  }
restaVida(cant) {
  this.vida -= cant;
  if (this.vida <= 0) {
    pantallaPerdiste = true;
  }
}
  /*muere() {
    return this.vida <= 0;
  }*/
}
