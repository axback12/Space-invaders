

void draw() {

  rectMode(CENTER);
  background(0);
  fill(255);
  rect(rectpos[0], rectpos[1], 80, 20);
  if (keyPressed) {
    switch(keyCode) {
    case LEFT:
      rectpos[0] -=10;
      break;
    case RIGHT:
      rectpos[0] +=10;
      break;
    }
  }
}
