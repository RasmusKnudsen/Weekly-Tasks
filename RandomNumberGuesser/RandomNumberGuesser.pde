int target;
int guess;
String guess_str = "";
int numberOfTries = 0;
int maxTries = 2;

void setup()
{
  target = (int)random(1, 100);
  println("Guess a number between 1 and 100");
}

void draw()
{
  if(maxTries == numberOfTries) {
    println("Game Over");
    exit();
  }
}

void keyPressed()
{
  if (keyCode == ENTER)
  {
    guess = int (guess_str);
    println("You guessed: "+guess);

    if (guess > target)
    {
      incrementTries();
      println("Your guess is too high");
    } else if  (guess < target)
    {
      incrementTries();
      println("Your guess is too low");
    } else if (guess == target)
    {
      println("correct");
    }
    guess = 0;
    guess_str = "";
  } 
  else
  {
    //Bruges til at kombinere flere strings vha +=key og så printes det til sidst. Så det ikke bliver 5+0 men i stedet 50
    guess_str += key;
    println(guess_str);
  }
}

void incrementTries()
{
  numberOfTries++;
}
