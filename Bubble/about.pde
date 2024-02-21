class About{
  PFont aboutFont;
  Button buttonMenu;
  boolean menu = false;
  String txt = "ABOUT\n===========\nEl juego consiste en destruir\n las burbujas y no dejar pasar \n mas de 3 de lo contrario píerdes";
  
  
  About(){
    aboutFont = createFont("Arial", 20 * displayDensity());
    buttonMenu = new Button("MENU",width/2,600,100,30);
    
  }
  
  void dibuja(){
    textFont(aboutFont);
    textAlign(CENTER,CENTER);
    fill(255);
    text(txt,width/2,300);
    text("Press button to continuos", width/2,700);
    text("Desarrolado por Wilfredo Chipana", width/2,500);
    buttonMenu.dibuja();
    
    if(buttonMenu.pressed){menu = true;}else{menu = false;}
  }
  
}
