let objJuego;
let estadoJuego;
let comenzar;
let perdiste;
let ganaste;
let estaca;
let jhon;
let dracula;
let murcielagos;
let fondo;


function preload() {
  comenzar = loadImage('assets/comenzar.png');
  perdiste = loadImage('assets/perdiste.png');
  ganaste = loadImage('assets/ganaste.png');
  estaca = loadImage('assets/estaca.png');
  jhon = loadImage('assets/jhon.png');
  dracula = loadImage('assets/dracula.png');
  murcielagos = loadImage('assets/murcielagos.png');
  fondo = loadImage('assets/fondo.png');
}
function setup() {
  createCanvas(600, 600);
  objJuego = new Juego();
  estadoJuego = 'comenzar';
}

function draw() {
  background(0);
  noStroke();
  rectMode(CENTER);
  objJuego.jhon.posX = mouseX;
  console.log("Estado del juego:", estadoJuego);
  //console.log("VidaDrácula:", this.dracula.vida);

  if (estadoJuego === 'comenzar') {// pantalla de inicio
    image(comenzar, 0, 0);
    fill(255, 0, 0);
    rect(width/2, height/2+100, 150, 50);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(20);
    text("Comenzar", width/2, height/2+100);
  } else if (estadoJuego === 'jugando') { //pantalla de juego
    image(fondo, 0, 0);
    objJuego.dibujar();
  } else if (estadoJuego === 'perdiste') {
    objJuego.mostrarPantallaPerdiste();
    objJuego.juegoTerminado = true;
    image(perdiste, 0, 0);
  } else if (estadoJuego === 'ganaste') {
    objJuego.mostrarPantallaGanaste();
    objJuego.juegoTerminado = true;
    image(ganaste, 0, 0);
  }
  //verificar si se gano o se perdio
  if (objJuego.pantallaPerdiste) {
    estadoJuego = 'perdiste';
  } else if (objJuego.pantallaGanaste) {
    estadoJuego = 'ganaste';
  }
  if (objJuego.juegoTerminado && estadoJuego !=='jugando') {//si terminó el juego, mostrar flechita y boton
    cursor(ARROW);
    fill(255, 0, 0);
    rect(width/2, height/2+100, 150, 50);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(20);
    text("Volver a jugar", width/2, height/2+100);
  }
  if (estadoJuego === 'jugando') {
    for (let i = 0; i < objJuego.dracula.murcielagos.length; i++) {
      const murcielagos = objJuego.dracula.murcielagos[i];
      murcielagos.dibujar();

      const distancia = dist(murcielagos.posX, murcielagos.posY, objJuego.jhon.posX, objJuego.jhon.posY);
      if (distancia<murcielagos.tam/2 && objJuego.jhon.vida>0) {
        objJuego.jhon.restaVida(1);
        objJuego.dracula.murcielagos.splice(i, 1);
      }
    }

    for (let i = objJuego.jhon.lanzarEstacas.length-1; i >= 0; i--) {
      const estaca = objJuego.jhon.lanzarEstacas[i];
      estaca.dibujar();
      estaca.mover();
    }
  }
}

function mousePressed() {
  if ((estadoJuego === 'comenzar') && mouseX > 225 && mouseX < 375 && mouseY > 375 && mouseY < 425) {
    estadoJuego = 'jugando';
  } else if (estadoJuego === 'jugando') {
    objJuego.juegoTerminado = false;
    objJuego.verificarClic(mouseX, mouseY);
    objJuego.jhon.lanzar();
  } else if ((estadoJuego === 'ganaste' || estadoJuego === 'perdiste') && mouseX > 225 && mouseX < 375 && mouseY > 375 && mouseY < 425) {
    objJuego.reiniciarJuego();
    estadoJuego = 'jugando';
  }
}
