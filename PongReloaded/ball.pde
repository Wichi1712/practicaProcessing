class Ball{
  float speedBallX = 5;
  float speedBallY = 5;
  int x = 50;
  int y = 30;
  int radio = 50;
  int rad = 20;
  
  Player player = new Player();
  
  //Constructor
  Ball(){
    
  }
  
  void dibuja(){
    ellipse(x,y,radio,radio);
    x += speedBallX;
    y += speedBallY;
    
    rebote();
  }
  
  void rebote(){
    //Rebote horizontal --eje X
    if(x + rad >= width){ speedBallX = -5;}//25 es la mitad de radio
    else if(x - rad <= 0){ speedBallX = 5;}
    
    //Rebote vertical --eje y
    if(y + rad >= height){
      gameStatus = "gameOver";
      speedBallY = -5;
    }
    else if( y - rad <= 0){speedBallY = 5;}
    
  }
  
  
}
