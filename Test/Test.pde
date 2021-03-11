
int radio = 10;//Variable global
float moveX = 0.1;
float moveY = 0.1;
int posX = 25;
int posY = 125;

PImage img;//variable de imagen


void setup() {
  size(800, 800);//Tamaño de la pantalla
  colorMode(RGB, 255, 255, 255);//Modo de color RGB o HSB
  noStroke();
  
  img = loadImage("win 4.jpg");//carga de imagen--Esta imagen tiene un tamaño original de 284 x 177
  /*
  *La imagen debe tener el tamaño de nuestra pantalla
  *de lo contrario se debe redimesionar con el metodo resize.
  */
  img.resize(800,800);//Se redimensiona a 800 x 800
  background(img);//fondo con imagen
  
  //background(150);//Color de fondo
  
  /*
  ColorMode ( mode) 
  ColorMode ( mode, max) 
  ColorMode ( mode, max1, max2, max3) 
  ColorMode ( mode, max1, max2, max3, maxA)
  
  Parámetros  
  --------------------------
  modo  int: RGB o HSB, que corresponde a Rojo / Verde / Azul y Tono / Saturación / Brillo
  max  flotante: rango para todos los elementos de color
  max1  flotante: rango para el rojo o el tono dependiendo del modo de color actual
  max2  flotante: rango para el verde o la saturación dependiendo del modo de color actual
  max3  flotante: rango para el azul o brillo dependiendo del modo de color actual
  maxA  flotante: rango para el alfa
  */
  
}

void draw() {
  background(img);
  //DIBUJA RECTANGULO VERDE
  noStroke();//Sin borde
  fill(90,202,0);//Relleno
  rect(25, 25, 70, 70,radio);//rect(x, y, ancho,alto,radio);
  stroke(15);
  
  //DIBUJA RECTANGULO AMARILLO
  int radio2 = 50;//Variable local  
  fill(231, 247, 2);
  rect(10,90,100,100,radio2,radio2,radio2,radio2);
  
  //DIBUJA CUADARADO ROJO
  //square( x, y, extent)
  fill(255,0,0);
  square(10,200,80);
  
  //DIBUJA LINEA AZUL
  stroke(50,50,255);//Color de linea
  line(10,300,250,450);
  strokeWeight(2);//Ancho de linea
  
  
  //
  rectMode(CORNER);  // Default rectMode is CORNER
  fill(255);  // Set fill to white
  rect(posX, posY, 50, 50);  // Draw white rect using CORNER mode
  posX +=moveX;
  posY +=moveY;
  if (posY > height-250) moveY -=1;else moveY +=0.05;
  if (posX > width-250) moveX -=1;else moveX +=0.05;

  rectMode(CORNERS);  // Set rectMode to CORNERS
  fill(100);  // Set fill to gray
  rect(posX, posY, 150, 50);  // Draw gray rect using CORNERS mode
  
  rectMode(0);
  /*
  rectMode(RADIUS);  // Set rectMode to RADIUS
  fill(255);  // Set fill to white
  rect(250, 350, 30, 30);  // Draw white rect using RADIUS mode

  rectMode(CENTER);  // Set rectMode to CENTER
  fill(100);  // Set fill to gray
  rect(250, 350, 30, 30);  // Draw gray rect using CENTER mode
  
  rectMode(0);
  */
  

  fill(90,202,0);//Relleno
  rect(25, posY, 70, 70,radio);//rect(x, y, ancho,alto,radio);
  stroke(15);
  fill(90,202,0);//Relleno
  rect(posX, 25, 70, 70,radio);//rect(x, y, ancho,alto,radio);
  stroke(15);
  
  //TEXTO
  String txt = "Palabra";
  textSize (32);
  text(txt, 600, 30); 
  fill(120, 132, 153);
  text (txt, 600, 60);
  fill(120, 132, 153, 180);//Color con transparencia
  text (txt, 600, 90); 
  
  
  //ROTACION
  int diametro = 60;
  
  fill(180,180,180);
  translate(width/2, height/2);
  rotate(PI/3.0);
  rect(-26, -26, diametro, diametro);
  
  fill(posX,posY,posX);
  translate(posX, posY);
  rotate(PI/moveX);
  rect(-30, -30, diametro, diametro);
  

}
