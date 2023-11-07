class Aventura {
  constructor() {
    this.pantallas = [];
    this.estado = 0;
    
    
    for (let i = 0; i < 17; i++) {
      this.pantallas[i] =  loadImage('assets/' + i + '.png');
    }
  }

cambioPantallas(nuevoEstado) {
      this.estado = nuevoEstado;

}
  dibujar() {
    image(this.pantallas[this.estado], 0, 0, width, height);
    
  }
}
