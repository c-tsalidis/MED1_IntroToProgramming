class Level
{
  // variables
  
  // level
  int level = 1;
  String levelText = "LEVEL " + str(level);
  int levelX = width / 2;
  int levelY = 100;
  
  // score text
  int scoreX = 150; // x coordinate of the score
  int scoreY = 75; // y coordinate of the score
  int score;
  String scoreText = "SCORE " + str(score);
  
  // highscore text
  int highscoreX = width - 225; // x coordinate
  int highscoreY = scoreY; // y coordinate
  int highscore;
  String highscoreText = "HIGHSCORE: " + str(highscore);
  
  
  // discout points
  int discountPoints;
  
  // start button and to check if the game has started
  boolean start;
  boolean showStartButton;
  String startText = "START";
  int startX = width / 2;
  int startY = height / 2;
  int startButtonX = 400;
  int startButtonY = 290;
  int startButtonWidth = 800;
  int startButtonHeight = 450;
  
  
  // Instructions text
  String instructionsText = "INSTRUCTIONS\nAvoid the obstacles using the left and right arrow keys.\nThe levels increase the difficulty by increasing the discount points when the player hits the obstacles";
  int instructionsX = width / 2;
  int instructionsY = height / 2 + 200;
  boolean showInstructions = true;
  
  
  /*
  // true or false to check if the player has passed level to show diferent obstacles amount depending on the level
  boolean[] showObstacle = {false, false, false, false, false, false}; // one for each of the levels
  */
  
  // Constructor
  Level(int game_level, int game_score, int discount_points, boolean game_start, boolean show_start_button)
  {
    level = game_level;
    score = game_score;
    discountPoints = discount_points;
    start = game_start;
    showStartButton = show_start_button;  
}
  
  void display()
  { 
    
    fill(255);
    textAlign(CENTER);
    
    // level text
    textSize(100);
    text(levelText, levelX, levelY);
    
    // score text
    textSize(30);
    text(scoreText, scoreX, scoreY);
    
    // highscore text
    textSize(30);
    text(highscoreText, highscoreX, highscoreY);
    
    // instructions text
    if(showInstructions == true)
    {
      textSize(20);
      text(instructionsText, instructionsX, instructionsY);
    }
    // start button
    if(showStartButton == true)
    {
      // println("show start button function running");
      textSize(100);
      text(startText, startX, startY);
      checkClickOnStart();
    }
    else if(showStartButton == false)
    {
      // println("show start button NOT function running");
      startText = "";
      text(startText, startX, startY);
    }
  }
  
  void update(int newScore)
  {
    // update score
    score = newScore;
    scoreText = "SCORE: " + str(score);
    
    // update highscore
    if(score > highscore)
    {
      highscore = score;
      highscoreText = "HIGHSCORE: " + str(highscore);
    }
    
    // check the score to see which level the player is at
    if(score >= 0 && score <= 500)
    {
      level = 1;
    }
    if(score >= 500 && score <= 1000)
    {
      level = 2;
    }
    else if(score >= 1000 && score < 1500)
    {
      level = 3;
    }
    else if(score >= 1500 && score < 2000)
    {
      level = 4;
    }
    else if(score >= 2000 && score < 2500)
    {
      level = 5;
    }
    else if(score >= 2500)
    {
      level = 6;
    }
    
    levelText = "LEVEL " + str(level);
    
    if(level == 6)
    {
      levelText = "INSANE";
    }

    checkGameLevel();
    display();
    
  }
  
  void checkGameLevel()
  {
    if(level >= 1)
    {
      discountPoints = 10;
      // obstacle[0].display();
      // showObstacle[0] = true;
      // println(showObstacle[0]);
    }
    if (level >= 2)
    {
      discountPoints = 20;
      // obstacle[1].display();
      // showObstacle[1] = true;
    }
    if (level >= 3)
    {
      discountPoints = 30;
      // obstacle[2].display();
      // showObstacle[2] = true;
    }
    if (_gameLevel >= 4)
    {
      discountPoints = 40;
      // obstacle[3].display();
      // showObstacle[3] = true;
    }
    if (level >= 5)
    {
      discountPoints = 50;
      // obstacle[4].display();
      // showObstacle[4] = true;
    }
    if (level >= 6)
    {
      discountPoints = 60;
      // obstacle[5].display();
      // showObstacle[5] = true;
    }
    
    /*
    else
    {
      for(int i=0; i< showObstacle.length; i++)
      {
        showObstacle[i] = false;
      }
    }
    */
    
    // println(discountPoints);
    
  }
  
}

void checkClickOnStart()
{
  if(mousePressed)
  {
    // if(mouseX >= startButtonX && mouseX <= startButtonWidth && mouseY >= startButtonY && mouseY <= startButtonHeight)
    if(mouseX >= 400 && mouseX <= 800 && mouseY >= 290 && mouseY <= 450)
    {
      start = true;
      showStartButton = false;
    }
  }
}
