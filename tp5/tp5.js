let objJuego;
let estadoJuego;

function setup() {
  createCanvas(600, 600);
  objJuego = new Juego();
  estadoJuego = 'comenzar';
}

function draw() {
  background(150);
  noStroke();
  rectMode(CENTER);
  objJuego.jhon.posX = mouseX;
  console.log("Estado del juego:", estadoJuego);
  //console.log("VidaDrácula:", this.dracula.vida);


  if (estadoJuego === 'comenzar') {// pantalla de inicio
    fill(255, 0, 0);
    rect(width/2, height/2+100, 150, 50);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(20);
    text("Comenzar", width/2, height/2+100);
    //boton
    if (mouseX>width/2-75 && mouseX<width/2+75 && mouseY>height/2+100 && mouseY<height/2+150) {
      if (mouseIsPressed) {
        estadoJuego = 'jugando';
        objJuego.reiniciarJuego();
      }
    }
  } else if (estadoJuego === 'jugando') { //pantalla de juego y eventos
    objJuego.dracula.dibujar();
    objJuego.dracula.dispararMurcielagos(objJuego.jhon.posX, objJuego.jhon.posY);
    objJuego.jhon.dibujar();
    objJuego.jhon.actualizarEstacas();
    //verificar si se gano o se perdio
    if (objJuego.pantallaPerdiste) {
      estadoJuego = 'perdiste';
    } else if (objJuego.pantallaGanaste) {
      estadoJuego = 'ganaste';
    }
  } else if (estadoJuego === 'perdiste') {
    objJuego.mostrarPantallaPerdiste();
    objJuego.juegoTerminado = true;
  } else if (estadoJuego === 'ganaste') {
    objJuego.mostrarPantallaGanaste();
    objJuego.juegoTerminado = true;
  }
  if (objJuego.juegoTerminado) {//si terminó el juego, mostrar flechita y boton
    cursor(ARROW);
    fill(255, 0, 0);
    rect(width/2, height/2+100, 150, 50);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(20);
    text("Reiniciar", width/2, height/2+100);

    if (mouseX>width/2-75 && mouseX<width/2+75 && mouseY>height/2+100 && mouseY<height/2+150) {
      if (mouseIsPressed) {
        if (objJuego.juegoTerminado && estadoJuego !== 'jugando') {
          objJuego.reiniciarJuego();
        }
      }
    }
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
  if (objJuego) {// si se esta jugando, jhon puede lanzar
    objJuego.juegoTerminado = false;
    objJuego.verificarClic(mouseX, mouseY);
    objJuego.jhon.lanzar();
  } else {
    objJuego.juegoTerminado = true;
    objJuego.verificarClic(mouseX, mouseY);
    objJuego.reiniciarJuego();
  }
}
