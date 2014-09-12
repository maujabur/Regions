// concept test for linear mapping pixels inside rectangular regions

class Region {
  int x, y, w, h;
  long q;
  color c;

  void draw() {
    rectMode(CORNER);

      fill(c);
      noStroke();

    if (this.lines() !=0) {
      rect(x, y, w, this.lines());
    }
    if (this.columns() !=0) {
      rect(x, y+this.lines(), columns(),1);
    }
  }

  int lines() {
    return (int)q/w;
  }
  int columns () {
    return (int)q%w;
  }

  void query() {
    println("--------");
    println("x = "+x);
    println("y = "+y);
    println("w = "+w);
    println("h = "+h);
    println("q = "+q);
    println("l = "+(q/w));
    println("c = "+(q%w));
  }
}

