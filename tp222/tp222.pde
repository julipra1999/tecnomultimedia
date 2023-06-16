int t, m;

void setup() {
size(800, 800);
m = 11 ;  // cantidad de cuadrados a dibujar
  t = 40;
}
void draw() {
  noStroke();
  pushMatrix();
translate(400, 0);

     for ( int i = 0; i < m; i++ ) {
    for ( int j = 0; j < m; j++ ) {
      if ( (i+j)%2 == 0 ) {  //modulo% devuelve el resta de una división: 0 par, 1 impar
        fill(4, 140, 13);
      } else {
        fill(255);
      }
       rect(i*t-20, j*t-20, t, t );
       for ( int k = 0; k < m; k++ ) {
        // pushMatrix();
         translate(400, 0);
       rotate(radians (45));
                fill(255, 0, 0);
         rect(i*t-20, j*t-20, t/2, t/2 );
         // popMatrix();
    }}}
   popMatrix();
 }
