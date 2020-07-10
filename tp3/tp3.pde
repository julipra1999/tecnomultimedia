
PImage uno, dos, tres, cuatro, cinco, seis, siete, ocho, nueve, diez, once, doce, trece, catorce, Creditos, HyG;
PFont Fuente, Historia;
String estado;

void setup () {
  size ( 800, 600);
 

HyG = loadImage ("hyg.png");
uno = loadImage ("hyg1.png");
dos = loadImage ("hyg2.png");
tres = loadImage ("hyg3.png");
cuatro = loadImage ("hyg4.png");
cinco = loadImage ("hyg5.png");
seis = loadImage ("hyg6.png");
siete = loadImage ("hyg7.png");
ocho = loadImage ("hyg8.png");
nueve = loadImage ("hyg9.png");
diez = loadImage ("hyg10.png");
once = loadImage ("hyg11.png");
doce = loadImage ("hyg12.png");
trece = loadImage("hyg13.png");
catorce = loadImage("hyg14.png");
Creditos = loadImage ("Creditos.png");
Fuente = loadFont ("Montserrat-SemiBold-48.vlw");
estado = "HyG";

}
void draw () {
   textFont(Fuente);
  
//------------------------------------------ESTADOS
 if(estado.equals("HyG") ) {
    image (HyG, 0, 0);
    noStroke();
    fill(#E7B4A2);
    rect(300, 400, 200, 75);
     textSize(30);
    textAlign(CENTER);
    fill(0);
    text("COMENZAR", 400, 455);
 }else if(estado.equals("uno") ) {
    image (uno, 0, 0);
    noStroke();
    fill(#628077);
    rect(75, 10, 650, 60);
    textSize(15);
    textAlign(CENTER);
    fill(0);
    text("HANSEL SE LA PASABA ESCUCHANDO A SUS PADRES DISCUTIR POR DINERO, \n POR LO QUE UN DÍA SE CANSÓ Y DIJO '¡VAMOS A IR A BUSCAR EL \n TESORO DEL QUE NOS HABLÓ MAMÁ!'", 400, 25);
    fill(#df8278);
    rect(350, 500, 100, 50);
    textSize(17);
    textAlign(CENTER);
    fill(0);
    text("SEGUIR", 400, 535);
 }else if(estado.equals("dos") ) { 
    image (dos, 0, 0);
    noStroke();
    fill(#628077);
    rect(65, 10, 670, 60);
    textSize(15);
    textAlign(CENTER);
    fill(0);
    text("HANSEL LE CUENTA A SU HERMANA GRETEL, Y JUNTOS SE ESCAPAN\n AL BOSQUE EN EL MEDIO DE LA NOCHE PARA CONSEGUIR ESE TESORO!\n PERO ANTES, ¿CON QUÉ DEBERÍAN MARCAR EL CAMINO PARA ASÍ VOLVER A CASA?", 400, 25);
    fill(#df8278);
    rect(75, 500, 100, 50);
    textSize(17);
    textAlign(CENTER);
    fill(0);
    text("PIEDRITAS", 125, 535);
    noStroke();
    fill(#df8278);
    rect(350, 500, 100, 50);
    textAlign(CENTER);
    fill(0);
    text("MIGAS", 400, 535);
    noStroke();
    fill(#df8278);
    rect(625, 500, 100, 50);
    textAlign(CENTER);
    fill(0);
    text("PINTURA", 675, 535);   
 }else if(estado.equals("tres") ) { 
    image (tres, 0, 0);
    noStroke();
    fill(#628077);
    rect(75, 10, 650, 50);
    textSize(15);
    textAlign(CENTER);
    fill(0);
    text("¡ELEGISTE PIEDRITAS! ¡VAMOS!", 400, 25);
    fill(#df8278);
    rect(350, 500, 100, 50);
    textSize(17);
    textAlign(CENTER);
    fill(0);
    text("SEGUIR", 400, 535);
  }else if(estado.equals("cuatro") ) { 
    image (cuatro, 0, 0);
    noStroke();
    fill(#628077);
    rect(75, 10, 650, 50);
    textSize(15);
    textAlign(CENTER);
    fill(0);
    text("¡ELEGISTE MIGAS! ¿HACIA DONDE VAMOS?", 400, 25);
    fill(#df8278);
    rect(75, 500, 100, 50);
    textSize(17);
    textAlign(CENTER);
    fill(0);
    text("IZQUIERDA", 125, 535);
    noStroke();
    fill(#df8278);
    rect(625, 500, 100, 50);
    textAlign(CENTER);
    fill(0);
    text("DERECHA", 675, 535);  
 }else if(estado.equals("cinco") ) {  
   image (cinco, 0, 0);
    noStroke();
    fill(#628077);
    rect(75, 10, 650, 50);
    textSize(15);
    textAlign(CENTER);
    fill(0);
    text("¡ELEGISTE PINTURA! ¡VAMOS!", 400, 25);
    fill(#df8278);
    rect(350, 500, 100, 50);
    textSize(17);
    textAlign(CENTER);
    fill(0);
    text("SEGUIR", 400, 535);
 }else if(estado.equals("seis") ) { 
   image (seis, 0, 0);
    noStroke();
    fill(#628077);
    rect(65, 10, 660, 60);
    textSize(15);
    textAlign(CENTER);
    fill(0);
    text("DESPUES DE MUCHAS VUELTAS POR LO QUE PARECE SER EL MISMO ARBOL,\n HANSEL Y GRETEL SE DIERON POR PERDIDOS, HASTA QUE VEN ASOMARSE UNA\n HERMOSA CASA HECHA DE ¿GOLOSINAS?", 400, 25);
    fill(#df8278);
    rect(50, 500, 150, 50);
    textSize(17);
    textAlign(CENTER);
    fill(0);
    text("MEJOR POR ACÁ", 125, 535);
    noStroke();
    fill(#df8278);
    rect(625, 500, 100, 50);
    textAlign(CENTER);
    fill(0);
    text("¡VAMOS!", 675, 535);  
 }else if(estado.equals("siete") ) { 
    image (siete, 0, 0);
    noStroke();
    fill(#628077);
    rect(75, 10, 650, 60);
    textSize(15);
    textAlign(CENTER);
    fill(0);
    text("DESPUES DE MUCHAS VUELTAS POR LO QUE PARECE SER EL MISMO ARBOL,\n HANSEL Y GRETEL SE DIERON POR PERDIDOS, HASTA QUE VEN A LO LEJOS\n UNAS PERSONAS CORRIENDO. ¡SON LADRONES!", 400, 25);
    fill(#df8278);
    rect(75, 500, 100, 50);
    textSize(17);
    textAlign(CENTER);
    fill(0);
    text("¡POLICIA!", 125, 535);
    noStroke();
    fill(#df8278);
    rect(625, 500, 100, 50);
    textAlign(CENTER);
    fill(0);
    text("¡CORRAN!", 675, 535);  
 }else if(estado.equals("ocho") ) { 
   image (ocho, 0, 0);
    noStroke();
    fill(#628077);
    rect(75, 10, 650, 50);
    textSize(15);
    textAlign(CENTER);
    fill(0);
    text("LA VIEJA PUDO CONVENCERLOS DE ENTRAR, PERO A HANSEL NO LE CERRABA...", 400, 25);
    fill(#df8278);
    rect(50, 500, 150, 50);
    textSize(17);
    textAlign(CENTER);
    fill(0);
    text("QUEDEMONOS", 125, 535);
    noStroke();
    fill(#df8278);
    rect(625, 500, 100, 50);
    textAlign(CENTER);
    fill(0);
    text("¡CORRE!", 675, 535);  
 }else if(estado.equals("nueve") ) {  
    image (nueve, 0, 0);
    noStroke();
    fill(#628077);
    rect(0, 10, 800, 60);
    textSize(15);
    textAlign(CENTER);
    fill(0);
    text("HUYERON Y ENCONTRAR A UN POLICIA EN EL\n BOSQUE, Y ÉSTE LE DIJO: '¡NO SE PREOCUPEN! VAMOS, LOS LLEVO A SU CASA,\n QUE ES MUY PELIGROSO EL BOSQUE EN ESTAS HORAS!'", 400, 25);
    fill(#df8278);
    rect(350, 500, 100, 50);
    textSize(17);
    textAlign(CENTER);
    fill(0);
    text("VAMOS", 400, 535);
 }else if(estado.equals("diez") ) {  
    image (diez, 0, 0);
    noStroke();
    fill(#628077);
    rect(75, 10, 650, 50);
    textSize(15);
    textAlign(CENTER);
    fill(0);
    text("VIERON ENTRE LOS ÁRBOLES UN LAGO ESCONDIDO Y \n¡LA BOLSA DE DINERO DE LOS LADRONES!", 400, 25);
    fill(#df8278);
    rect(350, 500, 100, 50);
    textSize(17);
    textAlign(CENTER);
    fill(0);
    text("A CASAA!", 400, 535);
 }else if(estado.equals("once") ) {  
   image (once, 0, 0);
    noStroke();
   fill(#628077);
    rect(75, 10, 650, 50);
    textSize(15);
    textAlign(CENTER);
    fill(0);
    text("¡HANSEL TENÍA RAZON! NUNCA MÁS SALIERON DE LA CASA DE LA VIEJA", 400, 25);
    fill(#df8278);
    rect(350, 500, 100, 50);
    textSize(17);
    textAlign(CENTER);
    fill(0);
    text("FIN", 400, 535);
 }else if(estado.equals("doce") ) {
  image (doce, 0, 0);
    noStroke();
    fill(#628077);
    rect(75, 10, 650, 50);
    textSize(15);
    textAlign(CENTER);
    fill(0);
    text("LOS NIÑOS HUYERON DE LA CASA DE DE GOLOSINAS, ¡Y SE LLEVARON EL DINERO DE LA VIEJA!", 400, 25);
    fill(#df8278);
    rect(350, 500, 100, 50);
    textSize(17);
    textAlign(CENTER);
    fill(0);
    text("SEGUIR", 400, 535);
 }else if(estado.equals("trece") ) {
  image (trece, 0, 0); 
    noStroke();
    fill(#628077);
    rect(75, 430, 650, 70);
    textSize(15);
    textAlign(CENTER);
    fill(0);
    text("EL POLICÍA LOS LLEVO A CASA, Y AUNQUE SUS PADRES ESTABAN ENOJADOS\n POR LA HUIDA, ESTABAN TAMBIÉN MUY FELICES DE SABER QUE\n HANSEL Y GRETEL ESTÁN SANOS Y SALVOS EN CASA!", 400, 450);
    fill(#df8278);
    rect(350, 500, 100, 50);
    textSize(17);
    textAlign(CENTER);
    fill(0);
    text("FIN", 400, 535);
 }else if(estado.equals("catorce") ) {
  image (catorce, 0, 0);
    noStroke();
    fill(#628077);
    rect(75, 10, 650, 50);
    textSize(15);
    textAlign(CENTER);
    fill(0);
    text("CAMINO A CASA SE TOPARON CON SU PADRE ¡QUÉ BIEN!", 400, 25);
    fill(#df8278);
    rect(350, 500, 100, 50);
    textSize(17);
    textAlign(CENTER);
    fill(0);
    text("FIN", 400, 535);
  }else if(estado.equals("Creditos") ) {
  image (Creditos, 0, 0);
    noStroke();
    fill(#CB9BFF);
    rect(300, 500, 200, 50);
    textSize(20);
    textAlign(CENTER);
    fill(0);
    text("VOLVER AL INICIO", 400, 535);
}
    
}

void mousePressed () {

  if(estado.equals("HyG") ) {
       if (mouseX > 340 && mouseX < 460 && mouseY > 400 && mouseY < 500 ) {
    estado = "uno";
     }
  }  
 
   else if(estado.equals("uno") ) {
    if (mouseX > 350 && mouseX < 450 && mouseY > 500 && mouseY < 550 ) {
    estado = "dos";
    } 
  }
    else if(estado.equals("dos") ) {
    if (mouseX > 75 && mouseX < 175 && mouseY > 500 && mouseY < 550 ) {
    estado = "tres";
    } 
    if (mouseX > 350 && mouseX < 450 && mouseY > 500 && mouseY < 550 ) {
    estado = "cuatro";
    } 
    if (mouseX > 590 && mouseX < 690 && mouseY> 500 && mouseY < 550 ) {
    estado = "cinco";
    }
  }
  else if(estado.equals("tres") ) {
    if (mouseX > 350 && mouseX < 450 && mouseY > 500 && mouseY < 550 ) {
    estado = "seis";
    }
  }
    else  if(estado.equals("cuatro") ) {
    if (mouseX > 75 && mouseX < 175 && mouseY > 500 && mouseY < 550 ) {
    estado = "seis";
    } 
    if (mouseX > 590 && mouseX < 690 && mouseY> 500 && mouseY < 550 ) {
    estado = "siete";
    }
  }  
  
     else if(estado.equals("cinco") ) {
    if (mouseX > 350 && mouseX < 450 && mouseY > 500 && mouseY < 550 ) {
    estado = "siete";
    }
  }
    else if(estado.equals("seis") ) {
    if (mouseX > 50 && mouseX < 200 && mouseY > 500 && mouseY < 550 ) {
    estado = "nueve";
    } 
    if (mouseX > 590 && mouseX < 690 && mouseY> 500 && mouseY < 550 ) {
    estado = "ocho";
    }
  }
  
   else if(estado.equals("siete") ) {
    if (mouseX > 75 && mouseX < 175 && mouseY > 500 && mouseY < 550 ) {
    estado = "nueve";
    } 
    if (mouseX > 590 && mouseX < 690 && mouseY> 500 && mouseY < 550 ) {
    estado = "diez";
    }
  }
  
   else if(estado.equals("ocho") ) {
    if (mouseX > 75 && mouseX < 175 && mouseY > 500 && mouseY < 550 ) {
    estado = "once";
    } 
    if (mouseX > 590 && mouseX < 690 && mouseY> 500 && mouseY < 550 ) {
    estado = "doce";
    }
  }
  
   else if(estado.equals("nueve") ) {
    if (mouseX > 350 && mouseX < 450 && mouseY > 500 && mouseY < 550 ) {
    estado = "trece";
    } 
   } 
   
   else  if(estado.equals("diez") ) {
    if (mouseX > 350 && mouseX < 450 && mouseY > 500 && mouseY < 550 ) {
    estado = "catorce";
    } 
   } 
   
   else  if(estado.equals("once") || estado.equals("trece") || estado.equals("catorce")) {
    if (mouseX > 350 && mouseX < 450 && mouseY > 500 && mouseY < 550 ) {
    estado = "Creditos";
    } 
  }
  else  if(estado.equals("doce")) {
    if (mouseX > 350 && mouseX < 450 && mouseY > 500 && mouseY < 550 ) {
    estado = "catorce";
    } 
   
  }
  else  if(estado.equals("Creditos")) {
    if (mouseX > 350 && mouseX < 450 && mouseY > 500 && mouseY < 550 ) {
    estado = "HyG";
    } 
  }
  }  
