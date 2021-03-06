float t;
float m = 0;
float angle = 0;

void setup() {
  size(600,600, P3D);
  background(0);
}

void draw() {
  
  //background(0);
  stroke(255);
  strokeWeight(4);
  translate(width/2,height/2);
  rotate(angle);
  angle = angle + 10;
  point(x(t), y(t));
  point(x2(t), y2(t));
  //point(x2(t), z(t));
  t++;
}

float x(float t) {
  return sin(t / (10)) * 100 + cos(t/20) *100;
}

float y(float t) {
  return cos(t / (10)) * 100 + sin(t/20) *100;
}

float x2(float t) {
  return sin(t / (10)) * 100;
}

float y2(float t) {
  return cos(t / (10)) * 100;
}