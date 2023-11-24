class Jhon {
  constructor() {
    this.vida = 3;
    this.posX = width/2;
    this.posY = 500;
    this.mov = 1;
    this.lanzarEstacas = [];
  }

  dibujar() {
    noCursor();
    if (this.vida > 0) { //
      this.posX = mouseX;
     // rectMode(CENTER);
     // fill(0, 255, 0);
     // rect(this.posX, this.posY, 50, 50);
            image(jhon, this.posX, this.posY, 75, 75);

    }
  }
  lanzar() {
    const nuevaEstaca = new Estaca(this.posX, objJuego.jhon.posY);
    this.lanzarEstacas.push(nuevaEstaca);
  }
  restaVida(cant) {
    this.vida -= cant;
    if (this.vida===0) {
      estadoJuego = 'perdiste';
    }
  }
  actualizarEstacas() {
    for (let i=this.lanzarEstacas.length-1; i>=0; i--) {
      const estaca = this.lanzarEstacas[i];
      estaca.mover();
    }
  }
  reiniciar() {
    this.vida = 3;
    this.posX = width/2;
    this.posY = 500;
    this.mov = 1;
    this.lanzarEstacas = [];
  }
}
