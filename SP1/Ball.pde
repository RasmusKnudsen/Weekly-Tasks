void changeColor() {
  fill(random(255), random(255), random(255));
  
}
class Ball {
  float xPos, yPos, movementX, movementY;
  //Constructor
  Ball() {
    //Random starting position
    this.xPos = random(0, width);  //this refers to this instance of the ball
    this.yPos = random(0, height);

    //Random starting speed
    this.movementX = random(-5, 5);
    this.movementY = random(-5, 5);
  }
  //Ball drawing/display
  void display() {
    ellipse(this.xPos, this.yPos, 50, 50);
  }
  //the balls movement
  void movement() {
    this.xPos = this.xPos + this.movementX;
    this.yPos = this.yPos + this.movementY;

    //If statements used to make the edges for the ball to bounce off
    //Side edges (x)
    if (this.xPos <0 || this.xPos > width) {
      this.movementX = this.movementX * -1.1;
    }
    //Top and bottom edges (y)
    if (this.yPos <0 || this.yPos > height) {
      this.movementY = this.movementY * -1.1;
    }
  }
}
