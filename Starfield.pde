PImage cat;
Particle[] phil = new Particle[100];
void setup() {
  size(600, 600);
  cat = loadImage("cat.png");
    for (int i =0; i<50; i++)
    phil[i] = new OddBallParticle();
    for (int i =50; i< phil.length; i++)
    phil[i] = new Particle();
    //background (112, 195, 207); //if want lines
}
void draw() {
  background (122,85,40);
  // if want just moving dots
  image(cat, 150,150, width/2, height/2);
  for (int i = 0; i< phil.length; i++) {
    phil[i].show();
    phil[i].move();
  }
}
class Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor;

  Particle() {
    myX= 300.0;
    myY = 300.0;
    mySpeed = Math.random()*10;
    myAngle = Math.random()*2*Math.PI;
    myColor = 0;
  }
  void move() {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY =  myY + Math.sin(myAngle) * mySpeed;
    if (myX >= 900)
      myX = 0;
  }

  void show() {
    noStroke();
    fill(240,65,45);
    ellipse((float)myX, (float)myY, 20, 20);
  }
}

class OddBallParticle extends Particle {
  void move() {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY =  myY + Math.sin(myAngle) * mySpeed;
  }

  void show() {
    noStroke();
    fill(222,53,156);
    ellipse((float)myX, (float)myY, 15, 15);
  }
}
