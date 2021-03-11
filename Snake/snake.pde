int filas = 40;
int columnas = 40;
int bs = 20;

ArrayList<Integer> posX = new ArrayList<Integer>();
ArrayList<Integer> posY = new ArrayList<Integer>();

int dir = 1;
int[] dx = {0,0,-1,1};
int[] dy = {-1,1,0,0};

int appleX;
int appleY;

String txtScore = "Score: ";
int score = 0;

boolean gameOver = false;

void setup(){
 size(800,800);
 posX.add(10);
 posY.add(10);
 frameRate(10);
 appleX = (int)random(0,40);
 appleY = (int)random(0,40);
}

void draw(){
  background(25);
  
  if(gameOver == true){
    fill(155);
    textSize(20);
    text("Presione SPACE para jugar",width/3, height/2);
    appleX = -1;
    appleY = -1;
    posX.clear();
    posY.clear();
    posX.add(-10);
    posY.add(-10);
    drawGameOver();
  }
  else{
    stroke(50);
    //Lineas horizontales
    for(int i = 0; i < filas; i++){
      line(0, i*bs, width, i*bs);
    }
    //Lineas verticales
    for(int j = 0; j < filas; j++){
      line(j*bs, 0, j*bs, height);
    }
  }
  
  mover();
  comer();
  detectarBordes();
  detectarSnake();
  drawApple();
  drawSnake();
  drawScore();
}

void detectarBordes(){
 if((posX.get(0) < 0) || (posX.get(0) > columnas -1) || (posY.get(0) < 0) || (posX.get(0) > filas -1)){
   gameOver = true;
 }
}

//Recorre la serpiente para detectar si esta colisionando con su cuerpo
void detectarSnake(){
  for(int i = 2; i < posX.size(); i++){
    for(int j = 2; j < posY.size(); j++){
      if((posX.get(0) == posX.get(i)) && (posY.get(0) == posY.get(i))){
        gameOver = true;
      }
    }
  }
}

void mover(){
  //dir 0 ==> arriba
  //dir 1 ==> abajo
  //dir 2 ==> izquierda
  //dir 3 ==> derecha
 posX.add(0,posX.get(0)+dx[dir]);
 posY.add(0,posY.get(0)+dy[dir]);
 posX.remove(posX.size()-1);
 posY.remove(posY.size()-1);
 //print(dx);
 //print(dy);
}

void drawSnake(){
 fill(40,50,230);
 for(int i = 0; i < posX.size(); i++){
   rect(posX.get(i)*bs,posY.get(i)*bs,bs,bs);
 }
}

void comer(){
 if((posX.get(0)== appleX) && (posY.get(0)== appleY)){
   score++;//Aumenta el score
   appleX = (int)random(0,40);//Cambia a una posicion aleatoria
   appleY = (int)random(0,40);//Cambia a una posicion aleatoria
   posX.add(posX.get(posX.size()-1));
   posY.add(posY.get(posY.size()-1));
 }
}

void drawApple(){
 fill(215,0,75);
 rect(appleX * bs, appleY * bs, bs, bs);
}

void drawScore(){
  fill(100,250,10);
  textSize(25);
  text(txtScore + score,40,50);
}

void drawGameOver(){
  //Dibuja Game over
  textSize(55);
  text("GAME OVER",240,380);
}

void restart(){
 gameOver = false;
 posX.clear();
 posY.clear();
 posX.add(10);
 posY.add(10);
 appleX = (int) random(0,40);
 appleY = (int) random(0,40);
 score = 0;
}

void keyPressed(){
  if(key == 'w'|| keyCode == UP) dir = 0;
  if(key == 's'|| keyCode == DOWN) dir = 1;
  if(key == 'a'|| keyCode == LEFT) dir = 2;
  if(key == 'd'|| keyCode == RIGHT) dir = 3;
  if(key == ' ') restart();
}
