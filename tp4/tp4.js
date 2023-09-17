//https://youtu.be/_2sAIXXlfig

let fruta =[];
let frutaX =[];
let frutaY =[];
let frutaV =[];

let frutaPodrida = [];
let frutaPodridaX =[];
let frutaPodridaY =[];
let frutaPodridaV =[];
let puntajeMenos = -5;
let estado = "inicio";
let estadoAnterior;
let boton = 50;
let d = 60;
let puntaje = 0;
let canastaX = 300;
let puntajeObjetivo = 100;
let puntajeMinimo = -50;
let tiempoLimite = 120;
let tiempoRestante = tiempoLimite;
let juegoTerminado = false;
let ganaste = false;
let reiniciarJuego = false;

function preload() {
  for (let i = 0; i < 5; i++) {
    fruta[i] =  loadImage('assets/fruta' + i + '.png');
    frutaPodrida[i] =  loadImage('assets/podrida' + i + '.png');
  }
  arbol = loadImage('assets/arbol.png');
  canasta = loadImage('assets/canasta.png');
  inicio = loadImage('assets/inicio.png');
  instrucciones = loadImage('assets/instrucciones.png');
  creditos = loadImage('assets/creditos.png');
}
function setup() {
  createCanvas(600, 600);
  textSize(20);
  noStroke();
  imageMode(CENTER);
  rectMode(CENTER);
  textAlign(CENTER);
  for (let i = 0; i < 5; i++) {
    frutaX[i]= random(50, 550);
    frutaY[i] = -50;
    frutaV[i] = random(0.5, 5);
    frutaPodridaX[i] = random(50, 550);
    frutaPodridaY[i] = -50;
    frutaPodridaV[i] = random(0.5, 5);
  }
  reiniciar();
}
function draw() {
  console.log("Estado actual: " + estado);
  background (152, 220, 235);
  fill(129, 212, 151);
  rect(300, 500, 600, 200);
  image(arbol, 50, 150);
  image(arbol, 550, 150);
  image(canasta, canastaX, 500, 150, 150);

  if (estado == "inicio") {
    image(inicio, width/2, height/2);
    fill(255, 0, 0);
    rect(width/2, 300, 150, 50, 20);
    rect(width/2, 375, 150, 50, 20);
    rect(width/2, 450, 150, 50, 20);
    textSize(20);
    fill(0, 255, 0);
    text("JUGAR", width/2, 305);
    text("CÓMO JUGAR", width/2, 380);
    text("CRÉDITOS", width/2, 455);
  } else if ( estado == "juego") {
    if (!juegoTerminado) {
      for (let i = 0; i < fruta.length; i++) {
        image(fruta[i], frutaX[i], frutaY[i]);
        frutaY[i] += frutaV[i];

        if (frutaX[i]>canastaX-75 && frutaX[i]<canastaX+75 && frutaY[i]>450 && frutaY[i]<600) {
          puntaje+=10;
          frutaX[i] = random(50, 550);
          frutaY[i] = 0;
          frutaV[i] = random(1, 3);
        } else if (frutaY[i] > height) {
          puntaje -= 1;
          frutaX[i] = random(50, 550);
          frutaY[i] = 0;
          frutaV[i] = random(1, 3);
        }
      }
      for (let i = 0; i < frutaPodrida.length; i++) {
        image(frutaPodrida[i], frutaPodridaX[i], frutaPodridaY[i]);
        frutaPodridaY[i] += frutaPodridaV[i];

        if (frutaPodridaX[i]>canastaX-75 && frutaPodridaX[i]<canastaX+75 && frutaPodridaY[i]>425 && frutaPodridaY[i]<575) {
          puntaje += puntajeMenos;
          frutaPodridaX[i] = random(50, 550);
          frutaPodridaY[i] = 0;
          frutaPodridaV[i] = random(1, 3);
        }
        if (frutaPodridaY[i] > height) {
          frutaPodridaX[i] = random(50, 550);
          frutaPodridaY[i] = 0;
          frutaPodridaV[i] = random(1, 3);
        }
      }

      fill(255, 0, 0);
      text("PUNTAJE: " + puntaje, width/2, 50);
    }
    if (estado == "cómo jugar") {
      image(instrucciones, width/2, height/2);
      fill(100, 0, 0);
      textSize(30);
      text("Cómo Jugar", width/2, height/2);
      textSize(20);
      text("Mové la canasta de izquierda a derecha con el mouse para juntar suficientes frutas hatsa llegar a 100 puntos!\n Recordá que si dejás caer la fruta o juntás las que estan podridas, restas puntos o.O", width/2, height/2);
    } else if (estado == "créditos") {
      image(creditos, width/2, height/2);
      fill(100, 0, 0);
      text("Créditos", width/2, height/2);
      text("Alumna Julieta Edelweiss Pratti \n  legajo 83917/3 \n Profe Matias Jauregui Lorda \n Trabajo Práctico Nº4", width/2, height/2);
    }
    mouseBoton = dist(mouseX, mouseY, boton, boton);

    if (estado != "inicio") {
      fill(178, 10, 252);
      circle(boton, boton, d );
      fill(245, 114, 33);
      rect(60, 50, 30, 15);
      triangle(25, 50, 45, 35, 45, 65);
    }
    if (estado == "juego" && !juegoTerminado) {
      tiempoRestante -= 1 / frameRate();
      if (puntaje >= puntajeObjetivo) {
        juegoTerminado = true;
        ganaste = true;
      } else if (puntaje <= puntajeMinimo || tiempoRestante <= 0) {
        juegoTerminado = true;
        ganaste = false;
      }
    } else {
      fill(255, 0, 0);
      rect(width/2, 400, 200, 50, 20);
      fill(0, 255, 0);
      textSize(20);
      text("VOLVER A JUGAR", width/2, 405);
      textSize(40);
      if (ganaste) {
        text("GANASTE!!!", width/2, 250);
      } else {
        fill(255, 0, 0);
        text("PERDISTE :(", width/2, 250);
      }
    }
  }

  console.log("MouseX: " + mouseX + ", MouseY: " + mouseY);
}
function mouseClicked() {
  if (estado == "inicio" && mouseX>225&&mouseX<375&&mouseY>275&&mouseY<325) {
    estadoAnterior = estado;
    estado = "juego";
  }
  if (estado == "inicio" && mouseX>225&&mouseX<375&&mouseY>350&&mouseY<400) {
    //estadoAnterior = estado;
    estado = "cómo jugar";
  }
  if (estado == "inicio" && mouseX>225&&mouseX<375&&mouseY>425&&mouseY<475) {
    // estadoAnterior = estado;
    estado = "créditos";
  }
  let distanciaAlBoton = dist(mouseX, mouseY, boton, boton);
  if (estado != "inicio" && distanciaAlBoton<d/2) {
    estadoAnterior = estado;
    reiniciar();
  }
  if (juegoTerminado && mouseX>200&&mouseX<375&&mouseY>375&&mouseY<425) {
    estado = estadoAnterior;
    reiniciar();
  }
}
function reiniciar() {
  puntaje = 0;
  tiempoRestante = tiempoLimite;
  juegoTerminado = false;
  ganaste = false;
  estado = "inicio";
  for (let i = 0; i < fruta.length; i++) {
    frutaX[i] = random(50, 550);
    frutaY[i] = -50;
    frutaV[i] = random(0.5, 5);
    frutaPodridaX[i] = random(50, 550);
    frutaPodridaY[i] = -50;
    frutaPodridaV[i] = random(0.5, 5);
  }
}
function mouseMoved () {
  canastaX = mouseX;
}
