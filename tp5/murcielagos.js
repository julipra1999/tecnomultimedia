class Murcielagos {
  constructor(posX, posY, targetX, targetY) {
    this.posX = posX;
    this.posY = posY;
    this.vel = 2;
    this.tam = 20;
    const angle = atan2(targetY - posY, targetX - posX);
    this.velX = this.vel * cos(angle);
    this.velY = this.vel * sin(angle);
  }

  mover() {
    this.posX += this.velX;
    this.posY += this.velY;
  }

  dibujar() {
    fill(0);
    ellipse(this.posX, this.posY, this.tam);
  }
}
