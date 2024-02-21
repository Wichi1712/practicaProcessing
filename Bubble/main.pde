int posX = 200;
int posY = 700;
static int RADIO = 60;
PFont font;
int score = 0;
int life = 3;
int gameState = 0;
/*------------------------
*Estados de Game:
0 = menu
1 = play
2 = win
3 = game over
------------------------*/
BubbleColor bubbleEspecial;
Bubble bubble = new Bubble(random(20,width-20),0);
Menu menu;
GameOver gameOver;

void setup(){
  orientation(PORTRAIT);
  size(400,720);
  //fullScreen();
  background(120);
  
  font = createFont("SanSerif",10* displayDensity());
  textFont(font);
  textAlign(CENTER,CENTER);
  
  bubble = new Bubble(random(20, width-20),0);
  bubbleEspecial = new BubbleColor(random(20, width-20),0,70,50,200);
  menu = new Menu();
  gameOver = new GameOver();
  
}

void draw(){
  background(80,80,200);
  switch(gameState){
    case 0:
      menu.dibuja();
    break;
    
    case 1:
      bubble.actualiza();
      bubble.dibuja();
      bubble.toque();
      
      bubbleEspecial.actualiza();
      bubbleEspecial.dibuja();
      bubbleEspecial.toque();
      /*Panel superior azul*/
      fill(0,255,0);
      rect(width/2,5,width-235,100);//fondo azul
      
    break;
    
    case 3:
      fill(0,255,0);//Relleno de texto
      gameOver.dibuja();
    break;
    
  }
  
  /*HUD*/
  fill(255);
  text("Score: " + score,100,30);
  text("Life: " + life,200,70);
  text("Level: " + score,350,30);
  
  if(life <= 0){
    life = 0;
    gameState = 3;
    
    mouseX = 0;
    mouseY = 0;
  }
  
}

void reintentar(){
  score = 0;
  life = 3;
  bubble.retornaPosicion();
  bubbleEspecial.retornaPosicion();
  gameState = 1;
}

void mousePressed(){
  fill(255);
  ellipse(mouseX, mouseY,110,110);
}
