// OPC opc;


int numBallsAdded;
float maxSpeed;
float chaos;
int minBallWidth, maxBallWidth;

ArrayList<Ball> balls;


void setup()
{
  size(500, 500);
  // size(500, 500, P3D);
 
  background(255);
  // background(0);

  // Connect to the local instance of fcserver
  // opc = new OPC(this, "127.0.0.1", 7890);

  // Map an 8x8 grid of LEDs to the center of the window
  // opc.ledGrid8x8(0, width/2, height/2, height / 12.0, 0, false);

  numBallsAdded = 1;
  maxSpeed = 7;
  chaos = 0.02;
  minBallWidth = 29;
  maxBallWidth = 79;

  balls = new ArrayList<Ball>();
}


void draw() {
  background(255);
  // background(0);
  
  for (Ball b : balls) {
    b.update();
    b.display();
  }
}


void spawnBalls() {

  for (int i=0; i < numBallsAdded; i++) {
    balls.add( new Ball(mouseX, mouseY, newColor(), minBallWidth, maxBallWidth, maxSpeed, chaos));
  }
}


color newColor () {
  color myColor = color(random(0, 255), random(0, 255), random(0, 255), random(75, 150));

  return myColor;
}


void mousePressed() {
  spawnBalls();
}



void keyPressed() {
  if (key == 'c') {
    balls.clear();
  }

}
