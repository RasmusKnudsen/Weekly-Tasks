//Array
Ball[] multipleBalls = new Ball[5];



void setup() {
  size(1000, 800);



  // For loop used to draw multiple balls
  for ( int i = 0; i < multipleBalls.length; i++) {
    multipleBalls[i] = new Ball();
  }
}

void draw()
{
  background(0);
  for (Ball b : multipleBalls) {
    b.movement();
    b.display();
  }
}
//mousePressed used to change colors of the balls
void mousePressed() {
  println("Mouse was pressed");
  changeColor();
  
}
