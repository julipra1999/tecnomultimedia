//Pratti, Julieta
//legajo 83917/3
//Comision 2


PImage alpaca1, alpaca2, alpaca3, alpaca4, alpaca5, alpacaInicio;
boolean inicio;
PFont titulo;
int estado, c;
float t;
String p1, p2, p3, p4, p5;
void setup() {
size(640, 480);
 imageMode(CENTER);
alpacaInicio = loadImage("alpacaInicio.png");
alpaca1 = loadImage("alpaca1.jpg");
alpaca2 = loadImage("alpaca2.jpeg");
alpaca3 = loadImage("alpaca3.jpg");
alpaca4 = loadImage("alpaca4.jpg");
alpaca5 = loadImage("alpaca5.jpg");
titulo = loadFont("ComicSansMS-Bold-48.vlw");
p1 = "son familia de los camellos \n y se las conoce como\n camélidos andinos";
p2 = "son tímidas con \n los humanos pero \n sociables con su \n especie, aunque  \n pueden ser \n domesticadas";
p3 = "dan patadas :) \n también escupen!";
p4 = "hacen sus \n necesidades \n siempre \n en el mismo \n  lugar";
p5 = "cuando algo les da curiosidad o están contentas, tararean ";
estado = 0;
t=20;

frameRate(60);
}
void draw() {
  t +=0.5;
  if (t >=60) {
   t =20;
  }
  println(mouseX, mouseY, inicio, t);
  background(241, 83, 245);
 //titulo
  textAlign(CENTER);
  textFont(titulo);
  textSize(t);
  fill(191, 245, 83);
  text("CURIOSIDADES DE LAS\n ALPACAS", width/2, height/2-50);
  textSize(20);
//boton
  text("click para comenzar -->", width/2, 400);
  noStroke();
  fill(230, 167, 255);
  ellipse(540,382, 200, 200);
  image(alpacaInicio, 520, 387);
//cambio de pantalla
  if(estado == 1) {
   background(230, 167, 255);
   image(alpaca1, width/2+150, height/2+50);
   fill(140, 255, 204);
   text(p1, width/2-150, height/2-150);
   c++;
    if( c >= 200 ) {  
      estado = 2;
      c = 0;  
    }
  }else if (estado == 2) {
   background(140, 255, 204);
   image(alpaca2, width/2-75, height/2);
   fill( 255, 175, 115);
   text(p2, 550, height/3);
   c++;
    if( c >= 200 ) {  
      estado = 3;
      c = 0; 
    }
   }else if (estado == 3) {
   background(255, 175, 115);
   image(alpaca3, width/2-100, height/2-75);
   fill(116, 128, 232);
   text(p3, 400, height/2+100); 
   c++;
    if( c >= 200 ) {  
      estado = 4;
      c = 0;  
    }
   }else if (estado == 4) {
   background(116, 128, 232);
   image(alpaca4, width/2+75, 380);
   fill(179, 57, 73);
   text(p4, 75, 75); 
   c++;
    if( c >= 200 ){  
      estado = 5;
      c = 0;  
    } }else if (estado == 5) {
   background(179, 57, 73);
   image(alpaca5, 500, 220);
   fill(166, 255, 184);
   text(p5, width/2, 75); 
   c++;
    if( c >= 200 ) {  
      estado = 6;
      c = 0;
     
    }}else if (estado == 6) {
    background(139,63, 196);
   textSize(40);
  fill(43, 196, 104);
  text("GRACIAS POR VER <3\n Pratti, Julieta \n legajo 83917/3", width/2, 150);
  textSize(20);
//boton
  text("click para volver al inicio -->", width/2-20, 400);
  noStroke();
  fill(43, 196, 104);
  ellipse(540,382, 200, 200);
  image(alpacaInicio, 520, 387);
     
    
}
}
void mousePressed() {
 float d = dist( mouseX, mouseY,540,382);
 int r = 100;
 if ((d < r) && (estado == 0)){
 estado = 1;
 }else if (estado == 6) {
   estado = 0;
 }
}
