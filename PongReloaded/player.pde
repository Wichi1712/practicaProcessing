class Player{
  int x = width/2;
  int y = 650;
  
  Player(){
    mouseY = 680;
  }
  
  void dibuja(){
    rectMode(RADIUS);//centra punto medio
    rect(x,y,80,15);
    if(mouseY > 640){
      x = mouseX;//Mueve raqueta
    }
  }
  
}
