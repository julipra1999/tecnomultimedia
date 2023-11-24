class Juego {
  constructor() {
    this.dracula = new Dracula();
    this.jhon = new Jhon();
    this.pantallaPerdiste = false;
    this.pantallaGanaste = false;
    this.juegoTerminado = false;
  }

  reiniciarJuego() {
    this.dracula.reiniciar();
    this.jhon.reiniciar();
    this.pantallaPerdiste = false;
    this.pantallaGanaste = false;
    this.juegoTerminado = false;
  }
  mostrarPantallaPerdiste() {
    textSize(48);
    fill(255, 0, 0);
    textAlign(CENTER, CENTER);
    text("¡Perdiste!", width/2, height/2);
    this.pantallaPerdiste = true;
  }
  mostrarPantallaGanaste() {
    textSize(48);
    fill(0, 255, 0);
    textAlign(CENTER, CENTER);
    text("¡Ganaste!", width / 2, height / 2);
    this.pantallaGanaste = true;
  }

  dibujar() {
    this.dracula.dibujar();
    this.jhon.dibujar();
    this.dracula.dispararMurcielagos(objJuego.jhon.posX, objJuego.jhon.posY);
    // dibujo de las estacas
    for (let i=this.jhon.lanzarEstacas.length-1; i>=0; i--) {
      const estaca = this.jhon.lanzarEstacas[i];
      estaca.mover();
      estaca.dibujar();
    }
    // verifica la colision
    if (this.jhon && this.jhon.lanzarEstacas) {
      for (let i=this.jhon.lanzarEstacas.length-1; i>=0; i--) {
        const estaca = this.jhon.lanzarEstacas[i];
        estaca.mover();
        estaca.dibujar();

        const distancia = dist(estaca.posX, estaca.posY, this.dracula.posX, this.dracula.posY);

        if (distancia<(estaca.tam/2+this.dracula.tam/2) && this.dracula.vida>0) {
          this.dracula.restaVida(1);
          console.log("Vida Drácula:", this.dracula.vida);
          this.jhon.lanzarEstacas.splice(i, 1);
          if (this.dracula.vida < 0) {
            this.pantallaGanaste = true;
            this.juegoTerminado = true;
          }
        }
      }
    }
    //vidas
    for (let i = 0; i < 6; i++) {
      if (i<this.dracula.vida) {
        fill(255, 0, 0);
      } else {
        fill(0);
      }
      ellipse(30+i*20, 30, 15, 15);
    }

    for (let i = 0; i < 3; i++) {
      if (i<this.jhon.vida) {
        fill(0, 255, 0);
      } else {
        fill(0);
      }
      ellipse(width-30-i*20, 30, 15, 15);
    }
   
  }
  verificarClic(x, y) {
    if (!this.dracula.vida||!this.jhon.vida) {
      return;
    }
    const distanciaDracula = dist(x, y, this.dracula.posX, this.dracula.posY);
    const distanciaJhon = dist(x, y, this.jhon.posX, this.jhon.posY);

    if (distanciaDracula<this.dracula.tam/2) {
      this.dracula.restaVida(1);
      if (this.dracula.vida === 0) {
        this.pantallaGanaste = true;
      }
    }
    if (distanciaJhon<25) {
      this.jhon.restaVida(1);
      if (this.jhon.vida === 0) {
        this.pantallaPerdiste = true;
      }
    }
  }
}
