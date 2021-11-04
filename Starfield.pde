PImage img;
Particle[] phil = new Particle[50];
void setup() {
  size(600, 600);
    for (int i =0; i<10; i++)
    phil[i] = new OddBallParticle();
  for (int i =10; i< phil.length; i++)
    phil[i] = new Particle();
    //background (112, 195, 207); //if want lines
}
void draw() {
  background (112, 195, 207); // if want just moving dots
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
    if (myX >= 600)
      myX = 0;
  }

  void show() {
    //fill(myColor);
    ellipse((float)myX, (float)myY, 30, 30);
  }
}

class OddBallParticle extends Particle {
  void move() {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY =  myY + Math.sin(myAngle) * mySpeed;
  }

  void show() {
    ellipse((float)myX, (float)myY, 20, 70);
  }
}
