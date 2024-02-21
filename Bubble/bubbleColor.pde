class BubbleColor{
  float velocidad = 0;
  float X,Y;
  int radio = 80;
  int R,G,B;
  int counter = 0;
  
  color red = color(255,0,0);
  color green = color(0,255,0);
  color blue = color(0,0,255);
  color white = color(255,255,255);
  color black = color(0,0,0);
  
  BubbleColor(float x,int y,int r,int g,int b){
    X = x;
    Y = y;
    R = r;G = g;B = b;
  }
  
  void dibuja(){
    strokeWeight(13);//Ancho del borde
    stroke(255);//Color de borde
    R = int(random(255));
    G = int(random(255));
    B = int(random(255));
    fill(R,G,B);
    ellipse(X,Y,radio,radio);
    
    fill(180);
    text("$",X,Y);
  }
  
  void actualiza(){
    counter++;
    Y = Y + velocidad;
    
    if(counter >= 200){velocidad = 5;
    }else
    if(counter < 200){velocidad = 0;}
    
    //Detecta limite inferior
    if(Y > height + 50){
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
    counter = 0;
  }
  
  void randColor(){
    R = int(random(255));
    G = int(random(255));
    B = int(random(255));
  }
  
  
  
}
