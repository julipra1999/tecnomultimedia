//Pratti, Julieta
// 83917/3
//https://youtu.be/obAOKjLgqSA

PImage ilusion;
color c1, c2, c3;

void setup() {
  size(800, 400);
  ilusion = loadImage("ilusion.jpeg");
  c1 = color(255);
  c2 = color(0);
  c3 = color(4, 140, 13);
}
void draw() {
  pushMatrix();
  translate(400, 0);
  noStroke();
  println(mouseX, mouseY);
  rectMode(CENTER);
  background(255);
  grilla(12, 40);
  popMatrix();
  image(ilusion, -80, 0);

  boolean botonOver = mouseBoton(420, 20, 460, 60);
  if (botonOver) {
    c3 = color(0, 0, 255);
  }
}

void keyPressed() {
  if (key == ' ') {
    c3 = color(255, 0, 0);
  } else if (key == ENTER) {
    c3 = color(4, 140, 13);
  }
}
