void grilla(int m, int t) {
  for (int i = 0; i < m; i++) {
    for (int j = 0; j < m; j++) {
      if ((i+j)%2 == 0) {
        fill(c3);
      } else {
        fill(255);
      }
      rect(i*t-40, j*t-40, t, t );
    }
  }
  for (int i = 0; i < m; i++) {
    for (int j = 0; j < m; j++) {
      float k = dist(mouseX, mouseY, 0, 0);
      float l = k*400/dist(width, height, 0, 0);
      pushMatrix();
      translate(i*t+20, j*t+20);
      if ((i+j)%2 == 1) {
        rotate(radians(135));
      } else {
        rotate(radians(l));
      }
      fill(c1, l);
      rect(0, 0, t/2.5, t/2.5 );
      translate(-4, 4);
      fill(c2, l);
      rect(0, 0, t/5, t/5 );
      translate(8, -8);
      rect(0, 0, t/5, t/5);
      popMatrix();
    }
  }
}

boolean mouseBoton(float x, float y, float width, float height) {
  return mouseX>x&&mouseX<width&&mouseY>y&&mouseY<height;
}
