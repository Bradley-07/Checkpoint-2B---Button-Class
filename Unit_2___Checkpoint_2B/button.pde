color red = #c1121f;
color blue = #8ecae6;
color green = #57cc99;
color pink = #e5989b;
color yellow = #ffe45e;

boolean mouseReleased;
boolean wasPressed;

class button{

int x,y,w,h;
boolean clicked;
color highlight, normal;
String text;



button(String t, int _x, int _y, int _w, int _h, color norm, color high){
x = _x;
y = _y;
w = _w;
h = _h;
text = t;
normal = norm;
highlight = high;
clicked = false;
 

  
}

void show (){
  
  
rectMode(CENTER);
if(mouseX > x-w/2 && mouseX < x+ w/2 && mouseY > y-h/2 && mouseY < y+h/2){
fill(highlight);
} else{
fill(normal);
}
stroke(0);
strokeWeight(4);
rect(x,y,w,h,30);

textAlign(CENTER);
if(mouseX > x-w/2 && mouseX < x+ w/2 && mouseY > y-h/2 && mouseY < y+h/2){
fill(normal);
} else {
fill(highlight);
}

textSize(w/4);
text(text,x,y);
 
 if ( mouseReleased && mouseX > x-w/2 && mouseX < x+ w/2 && mouseY > y-h/2 && mouseY < y+h/2){ // add mouseRekleased
 clicked = true;
 } else {
 clicked = false;
 }



}




}
