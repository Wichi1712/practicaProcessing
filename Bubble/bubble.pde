class Bubble{
  float velocidad = 5;
  float X,Y;
  int radio = 80;
  int neoColor;
  int colorBubble;
  
  color red = color(255,0,0);
  color green = color(0,255,0);
  color blue = color(0,0,255);
  color white = color(255,255,255);
  color black = color(0,0,0);
  
  Bubble(float x,int y){
    X = x;
    Y = y;
    //R = r;G = g;B = b;
  }
  
  void dibuja(){
    strokeWeight(13);//Ancho del borde
    stroke(255);//Color de borde
    fill(neoColor);
    ellipse(X,Y,radio,radio);
    
    fill(180);
    text("" + colorBubble,X,Y);
  }
  
  void actualiza(){
    Y = Y + velocidad;
    
    //Detecta limite inferior
    if(Y > height){
      life--;     
      retornaPosicion();     
    }    
  }
  
  void toque(){
    if (mousePressed){
      if(
      mouseY < Y + radio && mouseY > Y - radio &&
      mouseX < X + radio && mouseX > X - radio
      ){
        retornaPosicion();
        score++;
      }
    } 
  }
  
  void retornaPosicion(){
    Y = 0;
    X = random(30,width-30);
    randColor();
  }
  
  void randColor(){
    colorBubble = int(random(5));
    
    switch(colorBubble){
      case 0:
        neoColor = red;
      break;
      
      case 1:
        neoColor = blue;
      break;
      
      case 2:
        neoColor = green;
      break;
      
      case 3:
        neoColor = white;
      break;
      
      case 4:
        neoColor = black;
      break;
    }
    
  }
  
}
