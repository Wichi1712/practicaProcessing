class Menu{
  /*
  *0 => Muestra buttons,
  *1 => muestra about
  */
  
  int menuState = 0;
  PFont menuFont;
  int XBUTTON = width/2;
  int YBUTTON = 500;
  int YBUTTONABOUT = 600;
  int wButton = 100;
  int hButton = 30;
  int transicionEscene = 15;
  
  About about;
  Button buttonPlay, buttonAbout;
  
  Menu(){
    about = new About();
    menuFont = createFont("Arial", 25 * displayDensity());
    buttonPlay = new Button("Play",XBUTTON,YBUTTON,wButton, hButton);
    buttonAbout = new Button("About",XBUTTON,YBUTTONABOUT,wButton, hButton);
  }
  
  void dibuja(){
    switch(menuState){
      case 0:
        textFont(menuFont);
        textAlign(CENTER,CENTER);
        text("MENU",width/2,200);
        
        buttonPlay.dibuja();
        if(buttonPlay.pressed){nextEscene();}
        
        buttonAbout.dibuja();
        if(buttonAbout.pressed){
          transicionEscene--;
          if(transicionEscene <= 0){
            menuState = 1;
            transicionEscene = 15;
          }
        }  
      break;
      
      case 1:
        about.dibuja();
        if(about.menu){menuState = 0;}
      break;
    }
  }
  
  void nextEscene(){
    transicionEscene--;
    if(transicionEscene <= 0){gameState = 1;}//play
  }
  
  
}
