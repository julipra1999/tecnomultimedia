class Juego {
  constructor() {
    this.dracula = new Dracula();
    this.jhon = new Jhon();
  }

  dibujar() {
    this.dracula.dibujar();
    this.jhon.dibujar();
    for (let i = this.dracula.murcielagos.length - 1; i >= 0; i--) {
      const murcielago = this.dracula.murcielagos[i];
      murcielago.mover();
      murcielago.dibujar();
      const distancia = dist(murcielago.posX, murcielago.posY, this.jhon.posX, this.jhon.posY);
      if (distancia < murcielago.tam / 2) {
        this.jhon.restaVida(0.05);
        this.dracula.murcielagos.splice(i, 1);
      }
    }
    noStroke();
    for (let i = 0; i < 4; i++) {
      if (i < this.dracula.vida) {
        fill(255, 0, 0);
      } else {
        fill(0); 
      }
      ellipse(30 + i * 20, 30, 15, 15); 
    }

    for (let i = 0; i < 3; i++) {
      if (i < this.jhon.vida) {
        fill(0, 255, 0); 
      } else {
        fill(0); 
      }
      ellipse(width-30-i*20,30,15,15); 
    }
  }



  verificarClic(x, y) {
    if (this.dracula.muerto) {
      return;
    }

    const distanciaDracula = dist(x, y, this.dracula.posX, this.dracula.posY);
    const distanciaJhon = dist(x, y, this.jhon.posX, this.jhon.posY);

    if (distanciaDracula < this.dracula.tam/2) {
      this.dracula.vida--; 
      if (this.dracula.vida <= 0) {
        this.dracula.muerto = true; 
      }
    }

    if (distanciaJhon<25) {
      this.jhon.restaVida(1);
    }
  }
}
