class GameOver{
  Button overButton;
  
  GameOver(){overButton = new Button("Reintentar",width/2,700,110,30);}
  
  void dibuja(){
    overButton.dibuja();
    
    if(life <= 0){
      fill(0,255,0);
      text("Game Over",width/2,height/2);
      
      if(overButton.pressed){reintentar();}
    }
  }
}
