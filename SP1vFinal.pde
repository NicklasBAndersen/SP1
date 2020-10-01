import java.util.Random;

Game game = new Game(30, 20, 2, 2);
PFont font;

public void settings() {
  size(1201, 801);
}

void setup()
{
  frameRate(10);
  font = createFont("Arial", 16, true);
  textFont(font, 16);
}

void keyReleased()
{
  game.onKeyReleased(key);
  game.onKeyReleased2(keyCode);
}

void keyPressed()
{
  game.onKeyPressed(key);
  game.onKeyPressed2(keyCode);
}

void draw()
{
  if(!game.getGameOver()){
  game.update();
  background(0);

  int[][] board = game.getBoard();
  for (int y = 0; y < game.getHeight(); y++)
  {
    for (int x = 0; x < game.getWidth(); x++)
    {
      if(board[x][y] == 0)
      {
        fill(0,0,0);
      }
      else if(board[x][y] == 1)
      {
        fill(0,0,255);
      }
      else if(board[x][y] == 2)
      {
        fill(255,0,0);
      }
      else if(board[x][y] == 3)
      {
        fill(0,255,0);
      }
      else if(board[x][y] == 4)
      {
        fill(255,255,0);
      }
      else if(board[x][y] == 5)
      {
        fill(0,255,0);
      }
      stroke(100,100,100);
      rect(x*40, y*40, 40, 40);
    }
  }
  fill(255);
  text("Player 1 Life: "+game.getPlayerLife(), 25, 25);
  text("Player 1 Points: "+game.getPlayerPoints(), 25, 45);
  text("Player 2 Life: "+game.getPlayer2Life(), width-175, 25);
  text("Player 2 Points: "+game.getPlayer2Points(), width-175, 45);
  }
  if(game.getGameOver()){
    background(0);
    fill(255);
    textSize(36);
    textAlign(CENTER);
    text("GAME OVER ", width/2, height/2);
    text(game.getWinnerName() + " WINS", width/2, (height/2)+50);
  }
}
