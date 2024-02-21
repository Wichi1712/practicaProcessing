class Button{
  String nameBtn;
  int X,Y,wBtn,hBtn;
  int colorButton = 200;
  boolean pressed = false;
  
  Button(String nmBtn,int x,int y,int w,int h){
    nameBtn = nmBtn;
    X = x;
    Y = y;
    wBtn = w;
    hBtn = h;
  }
  
  void dibuja(){
    strokeWeight(15);
    stroke(colorButton-30);
    fill(colorButton);
    rectMode(RADIUS);
    rect(X,Y,wBtn,hBtn);
    fill(50);
    text(nameBtn,X,Y);
    actionTouch();
  }
  
  void actionTouch(){
    if(mouseY < Y + hBtn && mouseY > Y - hBtn &&
    mouseX < X + wBtn && mouseX > X -wBtn){
      pressed = true;
    }else{
      pressed = false;
    }
    
    colorBtn();
  }
  
  void colorBtn(){
    if(pressed){
      colorButton = 230;
      if(colorButton > 255){colorButton = 255;}
    }else{colorButton = 200;}
  }
  
}
