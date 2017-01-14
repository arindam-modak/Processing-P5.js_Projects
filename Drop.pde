class Drop
{
  float x = random(0,width);
  float y = random(-200,-50);
  float z = random(0,20);
  float len = map(z, 0, 20, 10, 20);
  float yspeed = map(z, 0, 20, 4, 10);
  
  void fall() {
    
      y = y + yspeed;
      yspeed = yspeed + 0.2;
      
      if (y > height-1){
        int color1 = int(random(0,250));
        int color2 = int(random(0,250));
        int color3 = int(random(0,250));
        stroke(color1, color2, color3);
        float thick = map(z, 0, 20, 2, 6);
        strokeWeight(thick);
        line(x,y,x-10,y-20);
        line(x,y,x+10,y-20);
        line(x,y,x,y-20);
        noStroke();
      }
      if (y > height) {
        y = random(-200, -50);
        yspeed = map(z, 0, 20, 4, 10);
      }
    
    
  }
  
  void show() {
    //int color1 = int(random(0,250));
    //int color2 = int(random(0,250));
    //int color3 = int(random(0,250));
    //stroke(color1, color2, color3);
    stroke(138, 43, 226);
    float thick = map(z, 0, 20, 1, 4);
    strokeWeight(thick); 
    line(x,y,x,y+len);
    
  }
  
}