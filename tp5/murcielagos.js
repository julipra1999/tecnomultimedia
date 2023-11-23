class Murcielagos {
  constructor(posX, posY, targetX, targetY) {
    this.posX = posX;
    this.posY = posY;
    this.vel = 2;
    this.tam = 20;
    //direccion del murcielago hacia jhon
    const angle = atan2(targetY-posY,targetX-posX);
    this.velX = this.vel * cos(angle);
    this.velY = this.vel * sin(angle);
  }

  dibujar() {
    fill(0);
    ellipse(this.posX, this.posY, this.tam);
    this.posX += this.velX;
    this.posY += this.velY;
  }
}
