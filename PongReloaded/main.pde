/*
Proyecto Pong Reloaded
*/
String gameStatus = "menu";
int score = 0;

Ball ball = new Ball();
Player player = new Player();
Menu menu = new Menu();
Hud hud = new Hud();


void setup() {
  /*
  
  */
  size(500,700);
  windowTitle("Pong-Reloaded");
  frameRate(20);
  player.x = width/2;
}


void draw() {
  //orientation();
  //fullScreen();
  background(0);
  
  if(gameStatus == "menu"){menu.dibuja();}else
  if(gameStatus == "play"){
    ball.dibuja();
    text("X", ball.x,ball.y + 40);
    player.dibuja();
    text("^", player.x -85, player.y, + 40);
    text("^", player.x +85, player.y, + 40);
    hud.score();
  }else
  if(gameStatus == "gameOver"){
    text("Game Over", width/2, height/2);
    //over.dibuja();
  }
  
  detectaColicion();
  
}

void detectaColicion(){
  if(ball.y > player.y - 40){
    if(ball.x > player.x - 80 && ball.x < player.x + 80){
      ball.speedBallY = -5;
      score++;
    }
  }
}
