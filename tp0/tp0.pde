PImage alpaca;

void setup() {
  size(800, 400);
  alpaca = loadImage("alpaca.jpg");
}
void draw() {
  println(mouseX, mouseY);
  background(100, 164, 196);
  noStroke();
  image(alpaca, 0, 0, 400, 400);
  fill(157, 204, 04);
  rect(400, 135, 400, 400);//pasto
//Arboles
  fill(117, 87, 0);
  rect(650, 75, 17, 130);
  rect(460, 70, 17, 100);
//Copa de arboles
   fill(124, 145, 52);
  ellipse(650, 65, 150, 125);
  fill(152, 179, 02);
  ellipse(800, 95, 175, 110);
   fill(89, 143, 79);
  ellipse(480, 75, 150, 85);
//Alpaca1
  fill(227, 197, 117);
  rect(670, 150, 70, 60, 25);
  rect(670, 115, 20, 47, 25);
  rect(676, 200, 10, 47, 25);
  rect(690, 200, 10, 47, 25);
  rect(708, 200, 10, 47, 25);
  rect(720, 200, 10, 47, 25);
  ellipse(673, 114, 3, 7);
  ellipse(686, 114, 3, 7);
  fill(0);
  ellipse(675, 125, 3, 3);
  ellipse(683, 125, 3, 3);
  ellipse(678, 130, 5, 5);
//Alambrado
  fill(96, 80, 67);
  rect(430,100, 7, 150 );
  rect(700,100, 7, 150 );
  rect(400, 120, 800, 3);
  rect(400, 210, 800, 3);
  rect(400, 165, 800, 3);
//Alpaca2
  fill(227, 197, 117);
  rect(440, 200, 157, 100, 40 );
  rect(560, 150, 40, 100, 40 );
  rect(444, 260, 25, 100, 40 );
  rect(474, 255, 25, 100, 40 );
  rect(525, 260, 25, 100, 40 );
  rect(555, 255, 25, 100, 40 );
  fill(224, 198, 132);
  rect(555, 120, 50, 50, 40);
  ellipse(560, 125, 7, 15);
  ellipse(600, 125, 7, 15);
  fill(0);
  ellipse(570, 135, 7, 7);
  ellipse(590, 135, 7, 7);
  triangle(575, 145, 585, 145, 580, 150);
  ellipse(582, 153, 5, 5);
  fill(227, 197, 117);
  rect(565, 128, 30, 5);
}
