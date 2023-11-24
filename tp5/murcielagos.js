class Murcielagos {
  constructor(posX, posY, targetX, targetY) {
    this.posX = posX;
    this.posY = posY;
    this.vel = 5;
    this.tam = 50;
    //direccion del murcielago hacia jhon
    const angle = atan2(targetY-posY,targetX-posX);
    this.velX = this.vel * cos(angle);
    this.velY = this.vel * sin(angle);
  }

  dibujar() {
    //fill(0);
    image(murcielagos,this.posX, this.posY, this.tam);
    this.posX += this.velX;
    this.posY += this.velY;
  }
}
