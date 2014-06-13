
class Ball {
  color ballColor;
  float x, y;
  float xSpeed, ySpeed;
  float ballWidth, ballHeight;
  float ballChaos;


  Ball( float _x, float _y, color _color, int _minWidth, int _maxWidth, float _maxSpeed, float _chaos) {
    x = _x;
    y = _y;
    ballColor = _color;
    xSpeed = random(-_maxSpeed, _maxSpeed);
    ySpeed = random(-_maxSpeed, _maxSpeed);
    ballWidth = random (_minWidth, _maxWidth);
    ballHeight = ballWidth;
    ballChaos = _chaos;
  }


  void update() {

    checkEdges();  
    checkCapture();

    x += xSpeed;
    y += ySpeed;
  }


  void checkEdges () {

    if (x + ballWidth/2 >= width || x - ballWidth/2 <= 0  ) {
      xSpeed = -(xSpeed + xSpeed * (random (-ballChaos, ballChaos)));
      changeColor();
    }

    if ( y + ballHeight/2 >= height || y - ballHeight/2 <= 0 ) {
      ySpeed = -(ySpeed + ySpeed * (random (-ballChaos, ballChaos)));
      changeColor();
    }
  }


  void checkCapture () {

    if (x + ballWidth/2 > width ) {
      x = width - ballWidth/2;
    } 

    if (x - ballWidth/2 < 0  ) {
      x = ballWidth/2;
    }

    if ( y + ballHeight/2 > height ) {
      y = height - ballHeight/2;
    }

    if ( y - ballHeight/2 < 0 ) {
      y = ballHeight/2;
    }
  }



  void display() {
    noStroke();
    fill(ballColor);
    ellipse(x, y, ballWidth, ballHeight);
  }


  void changeColor() {
    ballColor = color(random(0, 255), random(0, 255), random(0, 255), random(75, 150));
  }
}
