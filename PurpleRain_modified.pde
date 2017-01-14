
Drop[] rain = new Drop[500];

void setup() {
  size(1300,600, P3D);
  for (int i = 0; i< rain.length; i++) {
    rain[i] = new Drop();
  }
}

void draw() {
  background(230, 230, 250);
  //translate(width/2, height/2);
  for (int i = 0; i< rain.length; i++) {
    rain[i].fall();
    rain[i].show();
    
  }
}