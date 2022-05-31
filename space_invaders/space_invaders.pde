Cannon myCannon;
ArrayList <Enemy> enemies;
ArrayList<Bullet> bullets;
Enemy myEnemy;

void setup() {
  size(800, 800);


  myCannon = new Cannon(width/2);
  enemies = new ArrayList<Enemy>();
  bullets = new ArrayList<Bullet>();
  myEnemy = new Enemy(255, 50, 50);

  for (int i = 0; i < 15; i++) {
    enemies.add(new Enemy(color(255, 0, 0), 50*i+50, 50));
  }
  for (int i = 0; i < 15; i++) {
    enemies.add(new Enemy(color(0, 0, 255), 50*i+50, 0));
  }
  for (int i = 0; i < 15; i++) {
    enemies.add(new Enemy(color(0, 255, 0), 50*i+50, -50));
  }
}

void draw() {
  background(0);
  myEnemy.run();
  myCannon.run();

  for (Enemy e : enemies) {
    e.run();
  }

  for (Bullet b : bullets) {
    b.run();
  }

  for (int i = enemies.size() - 1; i >= 0; i--) {
    Enemy enemy = enemies.get(i);

    if (enemy.checkCollision(bullets)) {
      enemies.remove(i);
    }
  }
}
