PImage foto1, foto2, foto3, foto4, foto5, foto6, foto7;
PFont PulpFiction, Creditos, Producida;
float posY, posYtitulo, posYprodu, posYperso, posYdirec;
float posX1, posX2, posX3, posX4, posX5, posX6, posX7;

void setup() {
 size(1080, 720);

//--------------IMÁGENES

 foto1=loadImage ("foto1.jpg");
 foto2=loadImage ("foto2.jpg");
 foto3=loadImage ("foto3.jpg");
 foto4=loadImage ("foto4.jpg");
 foto5=loadImage ("foto5.jpg");
 foto6=loadImage ("foto6.jpg");
 foto7=loadImage ("foto7.jpg");
 textAlign( CENTER, CENTER );
 
 image (foto1, posX1, 0);
 image (foto2, posX2, 0);
 image (foto3, posX3, 0);
 image (foto4, posX4, 0);
 image (foto5, posX5, 0);
 image (foto6, posX6, 0);
 image (foto7, posX7, 0);

//------------------FUENTES

 PulpFiction=loadFont ("Ultra-Regular-125.vlw");
 Creditos=loadFont ("Bitter-Bold-48.vlw");
 Producida=loadFont ("Audiowide-Regular-48.vlw");
 
 //------------INICIO VARIABLES
 posY = 720;
 posYtitulo = 720;
 posYprodu = 720*2;
 posYperso = 720*3;
 posYdirec = 720*4;
 
 posX1 = 1080;
 posX2 = 1080*2;
 posX3 = 1080*3;
 posX4 = 1080*4;
 posX5 = 1080*5;
 posX6 = 1080*6;
 posX7 = 1080*7;
 
}

void draw() {
 background (0);
 textAlign(CENTER);
 fill(249, 234, 209);
 textSize (10);
 textFont (Producida);
 text("CLICK PARA REINICIAR",width/2, height/2);
 fill(0);
 rect(posX1-1080,0,1080,720);
 
 image (foto1, posX1, 0);
 image (foto2, posX2, 0);
 image (foto3, posX3, 0);
 image (foto4, posX4, 0);
 image (foto5, posX5, 0);
 image (foto6, posX6, 0);
 image (foto7, posX7, 0);
 
 posX1 = posX1 -2;
 posX2 = posX2 -2;
 posX3 = posX3 -2;
 posX4 = posX4 -2;
 posX5 = posX5 -2;
 posX6 = posX6 -2;
 posX7 = posX7 -2;
 
 fill(0, 75);
 rect(0, 0, 1080, 720);

//-------------------------TÍTULO

 fill(161,15,15) ;
 textSize (125);
 textFont (PulpFiction);
 text ("PULP", width/2-120, posYtitulo +318);
 text ("FICTION", width/2, posYtitulo +415);
 fill (249, 213, 0);
 text ("PULP", width/2-120, posYtitulo +305);
 text ("FICTION", width/2, posYtitulo +402);
 
 //-----------------------PRODUCCIÓN
 
 textFont (Producida);
 text ("A FILM BY", width/2, posYprodu +330);
 textSize(70);
 text ("QUENTIN TARANTINO", width/2, posYprodu +402);
 textFont (Creditos);
 textSize(20);

//-------------------------PROTAGONISTAS Y PERSONAJES

 fill(249, 234, 209);
 text ("JOHN TRAVOLTA as VINCENT VEGA", width/4, posYperso+560);
 text ("UMA THURMAN as MIA WALLACE", 810, posYperso+560);
 text ("SAMUEL L. JACKSON as JULES WINNIFIELD", width/4, posYperso+610);
 text ("BRUCE WILLIS as BUTCH COOLIDGE", 810,posYperso+610);
 text ("HARVEY KEITEL as WINSTON LOBO", width/4, posYperso+660);
 text ("TIM ROTH as RINGO or PUMPKIN", 810, posYperso+660);
 text ("AMANDA PLUMMER as YOLANDA or HONEY BUNNY", width/4, posYperso+710);
 text ("MARIA DE MEDEIROS as FABIENNE", 810, posYperso+710);
 text ("VING RHAMES as MARCELLUS WALLACE", width/4, posYperso+760);
 text ("ERIC STOLTZ as LANCE", 810,posYperso+760);
 text ("ROSANNA ARQUETTE as JODY", width/4, posYperso+810);
 text ("CHRISTPHER WALKEN as CAPTAIN KOONS", 810, posYperso+810);

//---------------------------DIRECCIÓN

 text ("DIRECTED & WRITTEN by QUENTIN TARANTINO", width/4, posYdirec+560);
 text ("PRODUCED by LAWRENCE BENDER", 810, posYdirec+560);
 text ("CINEMATOGRAPHY by ANDRZEJ SEKULA", width/4, posYdirec+610);
 text ("EDITED by SALLY MENKE", 810, posYdirec+610);
 text ("PRODUCED by A BAND APART & JERSEY FILMS", width/4, posYdirec+660);
 text ("DISTRIBUTED by MIRAMAX FILMS", 810, posYdirec+660);
 
 //-------ACTUALIZACIÓN VARIABLES
 
 posY = posY - 1;
 posYtitulo = posYtitulo -1;
 posYprodu = posYprodu - 1;
 posYperso = posYperso - 1;
 posYdirec = posYdirec - 1;
}
 
 void mouseClicked () {
 posY = 720;
 posYtitulo = 720;
 posYprodu = 720*2;
 posYperso = 720*3;
 posYdirec = 720*4;
 
 posX1 = 1080;
 posX2 = 1080*2;
 posX3 = 1080*3;
 posX4 = 1080*4;
 posX5 = 1080*5;
 posX6 = 1080*6;
 posX7 = 1080*7;

 

}
