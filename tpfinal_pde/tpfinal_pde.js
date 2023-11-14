let aventura;
let botones;
function setup() {
  createCanvas(600, 600);
  aventura = new Aventura();
}


function draw() {
  background(150);
  aventura.dibujar();
   fill(255);
  text("Estado actual: " + aventura.estado, 50, 50);
}

function mouseClicked() {
aventura.mouseClic();
}
