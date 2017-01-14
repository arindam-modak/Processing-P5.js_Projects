float t;
float m = 0;

void setup() {
  size(600,600, P3D);
  background(0);
}

void draw() {
  
    m+=1;
 
  if(m==100000) {
    m = 100;
  }
  //background(0);
  stroke(255);
  strokeWeight(4);
  translate(width/2,height/2);
  
  point(x(t), y(t));
  point(y(t), x(t));
  point(x2(t), z(t));
  t++;
}

float x(float t) {
  return sin(t / (10)) * 100;
}

float y(float t) {
  return tan(t / (10)) * 100;
}

float x2(float t) {
  return sin(t / (10)) * m;
}

float z(float t) {
  return cos(t / (10)) * m;
}