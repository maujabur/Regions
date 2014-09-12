Region r = new Region();

void setup() {
  size (800, 600);
  frameRate(30);
  r.q = 15;
  r.x = 20;
  r.y = 20;
  r.w = 10;
  r.h = 20;
  r.c = color(255, 0, 0);
  r.query();
}

void draw() {
  //scale(10);
  background(0);

  r.draw();
}

void keyPressed() {
  switch(key) {
  case  '+':
    r.q++;
    r.query();
    break;
  case  '-':
    r.q--;
    r.query();
    break;
  case  'q':
    r.query();
    break;
  }
}

