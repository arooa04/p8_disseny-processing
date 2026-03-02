void setup (){
  size(400, 500);
}
void draw (){
  background (0, 0, 255);
  noStroke();
  //conditional
  /*if(mouseX < width/2){
    fill(0, random (230, 255), 0);
  }else{
    fill(0, random (230, 255), 0, 0);
  }*/
  //iteration
  float g=0;
  for(float posx=35; posx<width-35; posx=posx+35){
    for(float posy=35; posy<height-35; posy=posy+35){
     if( g<360){
      textSize (40);
      pushMatrix();
      translate(posx,posy);
      g=g+1.5;
      rotate(radians(g));
      text("a", -17, 8);
      popMatrix();
    } else{
      g=0;
    }
   }
  }
}
  //println (posx, posy);
