class Aventura {
  constructor() {
    this.botones = new Botones();
    this.pantallas = [];
    this.estado = 0;


    for (let i = 0; i < 17; i++) {
      this.pantallas[i] =  loadImage('assets/' + i + '.png');
    }
  }

  cambioPantallas(nuevoEstado) {
    this.estado = nuevoEstado;
  }
  dibujar() {
    image(this.pantallas[this.estado], 0, 0, width, height);

    //visualización de botones
    if (this.estado === 0) {
      this.botones.dibujarMenu(300);
      this.botones.dibujarMenu(375);
      text( "COMENZAR", width/2, height/2+10);
      text( "CRÉDITOS", width/2, height/2+85);
    } else if (this.estado === 12||this.estado === 13||this.estado === 15) {
      this.botones.dibujarMenu(550);
      text("CRÉDITOS", width/2, 560);
    } else if (this.estado === 2 ||this.estado === 6 ||this.estado === 9 ) {
      this.botones.dibujar(150, 550, 50);
      this.botones.dibujar(450, 550, 50);
    } else if (this.estado === 1 ||this.estado === 3 ||this.estado === 4 ||this.estado === 5 ||this.estado === 7 ||this.estado === 8 ||this.estado === 11 ) {
      this.botones.dibujar(width / 2, 550, 50);
    }
    if (this.estado === 10) {
      this.botones.dibujar(150, 550, 50);
      this.botones.dibujar(width / 2, 550, 50);
      this.botones.dibujar(450, 550, 50);
    }
    if (this.estado === 16) {
      this.botones.dibujarMenu(550);
      this.botones.creditos();
    }
  }
  mouseClic() {
    if (this.estado == 0 && mouseX > 200 && mouseX < 400 && mouseY > 275 && mouseY < 325) {
      this.cambioPantallas(1);
    } else if (this.estado == 0 && mouseX > 200 && mouseX < 400 && mouseY > 350 && mouseY < 400) {
      this.cambioPantallas(16);
    } else if (this.estado == 16 && mouseX > 200 && mouseX < 400 && mouseY > 525 && mouseY < 575) {
      this.cambioPantallas(0);
    } else if (this.estado == 1 && this.botones.mouseSobreBoton(width / 2, 550, 50)) {
      this.cambioPantallas(2);
    } else if (this.estado == 2 && this.botones.mouseSobreBoton(150, 550, 50)) {
      this.cambioPantallas(3);
    } else if (this.estado == 2 && this.botones.mouseSobreBoton(450, 550, 50)) {
      this.cambioPantallas(4);
    } else if (this.estado == 3 && this.botones.mouseSobreBoton(width / 2, 550, 50)) {
      this.cambioPantallas(5);
    } else if (this.estado == 4 && this.botones.mouseSobreBoton(width / 2, 550, 50)) {
      this.cambioPantallas(6);
    } else if (this.estado == 5 && this.botones.mouseSobreBoton(width / 2, 550, 50)) {
      this.cambioPantallas(6);
    } else if (this.estado == 6 && this.botones.mouseSobreBoton(150, 550, 50)) {
      this.cambioPantallas(7);
    } else if (this.estado == 6 && this.botones.mouseSobreBoton(450, 550, 50)) {
      this.cambioPantallas(8);
    } else if (this.estado == 7 && this.botones.mouseSobreBoton(width / 2, 550, 50)) {
      this.cambioPantallas(9);
    } else if (this.estado == 8 && this.botones.mouseSobreBoton(width / 2, 550, 50)) {
      this.cambioPantallas(10);
    } else if (this.estado == 9 && this.botones.mouseSobreBoton(150, 550, 50)) {
      this.cambioPantallas(8);
    } else if (this.estado == 9 && this.botones.mouseSobreBoton(450, 550, 50)) {
      this.cambioPantallas(11);
    } else if (this.estado == 10 && this.botones.mouseSobreBoton(150, 550, 50)) {
      this.cambioPantallas(12);
    } else if (this.estado == 10 && this.botones.mouseSobreBoton(width / 2, 550, 50)) {
      this.cambioPantallas(13);
    } else if (this.estado == 10 && this.botones.mouseSobreBoton(450, 550, 50)) {
      this.cambioPantallas(14);
    } else if (this.estado == 11 && this.botones.mouseSobreBoton(width / 2, 550, 50)) {
      this.cambioPantallas(10);
    } else if (this.estado == 12 && mouseX > 200 && mouseX < 400 && mouseY > 525 && mouseY < 575) {
      this.cambioPantallas(16);
    } else if (this.estado == 13 && mouseX > 200 && mouseX < 400 && mouseY > 525 && mouseY < 575) {
      this.cambioPantallas(16);
    } else if (this.estado == 14 && this.botones.mouseSobreBoton(width / 2, 550, 50)) {
      this.cambioPantallas(15);
    } else if (this.estado == 15 && mouseX > 200 && mouseX < 400 && mouseY > 525 && mouseY < 575) {
      this.cambioPantallas(16);
    }
  }
}
