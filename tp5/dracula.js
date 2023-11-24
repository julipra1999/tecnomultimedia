class Dracula {
  constructor() {
    this.posX = random(50, 550);
    this.posY = 100;
    this.vida = 6;
    this.tam = 75;
    this.velX = 4;// cambiar a 2
    this.direccion = 1;
    this.murcielagos = [];
  }

  dibujar() {
        image(dracula, this.posX, this.posY, this.tam, this.tam);

    //fill(255, 0, 0);
  //  circle(this.posX, this.posY, this.tam);
    if (random(1)<0.05) { // cambia el tamaño aleatoriamente
      this.tam = random(40, 90);
    }
    this.moverX();
  }
  moverX() {
    this.posX += this.velX * this.direccion;
    if (this.posX<50 || this.posX>550) {
      this.direccion *= -1;
    }
  }
  restaVida(cant) {
    this.vida -= cant;
    if (this.vida===0) {
      estadoJuego = 'ganaste';
    }
  }
  dispararMurcielagos(targetX, targetY) {
    if (estadoJuego === 'jugando') { // si se esta en juego, se disparan murcielagos
      if (random(1)<0.02) {
        const nuevoMurcielagos = new Murcielagos(this.posX, this.posY, targetX, targetY);
        this.murcielagos.push(nuevoMurcielagos);
      }
    }
  }
  reiniciar() {
    this.posX = random(50, 550);
    this.posY = 100;
    this.vida = 6;
    this.tam = 50;
    this.velX = 4;
    this.direccion = 1;
    this.murcielagos = [];
  }
}
