color red = #c1121f;
color blue = #8ecae6;
color green = #57cc99;
color pink = #e5989b;
color yellow = #ffe45e;
color black = #000000;
color white = #FFFFFF;

boolean mouseReleased;
boolean wasPressed;

button[] myButton;

color COLOR;
PImage pic;


void setup() {
  size(800, 800);
 strokeWeight(5);
 COLOR = white;
  myButton = new button[5];
  myButton[0] = new button("Red", 100,100,150,150, red, blue);
    myButton[1] = new button("Blue", 100,300,150,150, blue,black);
    myButton[2] = new button("Green", 100,500,150,150, green,red);
    myButton[3] = new button("Black", 100,700,150,150, black, white);
    pic = loadImage("picture.png");
    myButton[4] = new button(pic, 600,200,300,300, pink, yellow);
}

void draw() {
  click();
  
background(COLOR);
  
for(int i = 0; i<5;i++){
  myButton[i].show();
 
  if(myButton[i].clicked){
  COLOR = myButton[i].normal;
  }
  
}
}
