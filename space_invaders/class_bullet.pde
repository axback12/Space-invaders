class Bullet {

  //float xpos, ypos;
  //float Yspeed;

  PVector pos;
  PVector speed;

  Bullet() {

    pos = new PVector(0, 0);
    speed = new PVector(0, 0);

    //xpos = myCannon.xpos;
    //ypos = height - 30;

    pos.x = myCannon.xpos;
    pos.y = height - 30;

    speed.y = 10;
  }

  void run() {
    update();
    render();
  }

  void update() {
    //ypos = ypos - speed;

    pos.sub(speed);
  }

  void render() {
    fill(255);
    rectMode(CENTER);
    rect(pos.x, pos.y, 5, 5);
  }
}
