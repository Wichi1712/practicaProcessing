class Menu{
  Menu(){}
  
  void dibuja(){
    PFont menuFont = createFont("Arial",40 * displayDensity());
    textFont(menuFont);
    textAlign(CENTER,CENTER);
    text("Pong\nReloaded",width/2,200);//>>alt 348 =>\
    
    PFont menuFont2 = createFont("Arial",15 * displayDensity());
    textFont(menuFont2);
    //textAlign(CENTER,CENTER);
    text("Touch screen to play",width/2,400);
    text("By Wilfredo Chipana (Wichi)",width/2,650);
    
    startGame();
    
  }
  
  void startGame(){
    if(mousePressed){gameStatus = "play";}
  }
}
