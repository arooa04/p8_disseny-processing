PFont myfont;
void setup(){
  size (500,500);
  myfont=createFont("FiraSans-Regular.ttf", 100);
}
void draw (){
  background(90);
  textSize(40);
  textFont(myfont);
  text("g", width/2, height/2);
}
