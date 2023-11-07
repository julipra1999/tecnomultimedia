let aventura;
let boton;
function setup() {
  createCanvas(600, 600);
aventura = new Aventura();
botones = new Botones(width/2, 550, 50);

}


function draw() {
background(150);
aventura.dibujar();
botones.dibujar();
}

function mouseClicked() {
  if (aventura.estado === 0) {
    aventura.cambioPantallas(1);
    botones.dibujarMenu(300);
  } else if (aventura.estado === 1) {
    aventura.cambioPantallas(2);
  }
}
