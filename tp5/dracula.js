class Dracula {
  constructor() {
    this.posX = random(50, 550);
    this.posY = random(50, 550);
    this.muerto = false;
    this.vida = 6;
    this.color = color(255, 0, 0);
    this.tam = 50;
    this.visible = true;
    this.tiempoVisible = 60;
    this.murcielagos = [];
    this.clics = 0;
  }

  dibujar() {
    if (this.visible) {
      fill(this.color);
      circle(this.posX, this.posY, this.tam);
    }
  }
 
  mover() {
    if (this.visible) {
      this.tiempoVisible--;
      if (this.tiempoVisible <= 0) {
        this.visible = false;
        this.tiempoVisible = int(random(30, 120));
      }
    } else {
      this.visible = true;
      this.posX = random(50, 550);
      this.posY = random(50, 550);
    }
  }
  cambiarTamano() {
    if (random(1) < 0.05) {
      this.tam = random(10, 70);
    }
  }
  dispararMurcielagos(targetX, targetY) {
   if (!pantallaPerdiste && !pantallaGanaste) {
    if (random(1) < 0.02) {
      const nuevoMurcielagos = new Murcielagos(this.posX, this.posY, targetX, targetY);
      this.murcielagos.push(nuevoMurcielagos);
    }
  }
  }
   muere() {
     if (this.clics >= 1) {
      this.color = color(255, 255, 0);
      this.vida = -1;
      pantallaGanaste = true;
    }
  }
}
