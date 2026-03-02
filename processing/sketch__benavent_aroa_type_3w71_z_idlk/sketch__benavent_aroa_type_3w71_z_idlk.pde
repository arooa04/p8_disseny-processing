String word = "dancing";
PFont myfont;
boolean Record;
boolean check;
float g;
int inc;
void setup() {
  size(800, 800);
  background(0);
  smooth();
  myfont = createFont("FiraSans-Regular.ttf", 25);
  textFont(myfont);
  textAlign(CENTER, CENTER);
  fill(255);
  drawShape();
  noLoop();
}
void drawShape() {
  float step = 18;  // distancia entre palabras (menor = más denso)
  
  for (float y = 0; y < height; y += step) {
    for (float x = 0; x < width; x += step) {
      
      // Normalizamos coordenadas a rango -1 .. 1
      float nx = map(x, 0, width, -1.2, 1.2);
      float ny = map(y, 0, height, 1.2, -1.2);
      
      // Ecuación implícita tipo manzana/corazón suavizado
      float a = nx*nx + ny*ny - 1;
      float shape = a*a*a - nx*nx*ny*ny*ny;
      
      if (shape <= 0) {
        // Variación leve de tamaño para efecto orgánico
        float sizeVar = map(abs(ny), 0, 1.2, 22, 10);
        textSize(sizeVar);
        text(word, x, y);
      }
    }
  }
}
