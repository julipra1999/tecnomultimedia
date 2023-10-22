let objJuego;
let pantallaPerdiste = false;
let pantallaGanaste = false;
let juegoTerminado = false;

function setup() {
  createCanvas(600, 600);
  objJuego = new Juego();
}

function draw() {
  background(150);

  objJuego.dracula.mover();
  objJuego.dracula.dispararMurcielagos(objJuego.jhon.posX, objJuego.jhon.posY);

  if (pantallaPerdiste) {
    mostrarPantallaPerdiste();
    juegoTerminado = true;
  } else if (pantallaGanaste) {
    mostrarPantallaGanaste();
    juegoTerminado = true;
  } else {
    objJuego.dibujar();
    objJuego.dracula.cambiarTamano();
  }
  if (juegoTerminado) {
    cursor(ARROW);
    fill(0);
    rect(width/2, height/2+100, 150, 50);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(20);
    text("Reiniciar", width/2, height/2+100);

    if (mouseX>width/2-75 && mouseX<width/2+75 && mouseY>height/2+75 && mouseY<height/2+125) {
      if (mouseIsPressed) {
        if (juegoTerminado) {
          reiniciarJuego();
        }
      }
    }
  }
  for (let i=0; i<objJuego.dracula.murcielagos.length; i++) {
    const murcielagos = objJuego.dracula.murcielagos[i];
    murcielagos.mover();
    murcielagos.dibujar();

    const distancia = dist(murcielagos.x, murcielagos.y, objJuego.jhon.posX, objJuego.jhon.posY);
    if (distancia<murcielagos.tam/2) {
      objJuego.jhon.restaVida(0.5);
      objJuego.dracula.murcielagos.splice(i, 1);
    }
  }
}
function reiniciarJuego() {
  objJuego = new Juego();
  pantallaPerdiste = false;
  pantallaGanaste = false;
  juegoTerminado = false;
}

function mousePressed() {
  if (!pantallaPerdiste && !pantallaGanaste) {
    objJuego.verificarClic(mouseX, mouseY);
  }
}
function mostrarPantallaPerdiste() {
  textSize(48);
  fill(255, 0, 0);
  textAlign(CENTER, CENTER);
  text("¡Perdiste!", width/2, height/2);
}

function mostrarPantallaGanaste() {
  textSize(48);
  fill(0, 255, 0);
  textAlign(CENTER, CENTER);
  text("¡Ganaste!", width / 2, height / 2);
}
