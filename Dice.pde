void setup(){
 size(400,400);
 textAlign(CENTER);
 noLoop();
}

void draw(){
  for(int y = 0; y < 500; y+=50){
    for(int x = 0; x < 500; x+=50){
    Dice bob = new Dice(x,y);
    bob.show();
    }
  }
  text ("the total is "+ (int)(Math.random()*250), 250, 250);
}

class Dice {
  int myX, myY;
  Dice(int x, int y){
   myX = x;
   myY = y;
  }
 
void show(){
fill(#FFFFFF);
rect(myX, myY, 50,50);
fill(#E51E1E);
int number = ((int)(Math.random()*6)+1);
if (number == 1){
  fill(#2C2222);
  ellipse(myX+25,myY+25,5,5);
} else if (number == 2){
  fill(#2C2222);
  ellipse(myX+15,myY+25,5,5);
  ellipse(myX+35,myY+25,5,5);
  } else if (number == 3){
  fill(#2C2222);
  ellipse(myX+15,myY+35,5,5);
  ellipse(myX+35,myY+35,5,5);
  ellipse(myX+25,myY+20,5,5);
  } else if (number == 4){
  fill(#2C2222);
  ellipse(myX+18,myY+35,5,5);
  ellipse(myX+32,myY+35,5,5);
  ellipse(myX+18,myY+20,5,5);
  ellipse(myX+32,myY+20,5,5);
  } else if (number == 5){
  fill(#2C2222);
  ellipse(myX+25,myY+25,5,5);
  ellipse(myX+18,myY+32,5,5);
  ellipse(myX+32,myY+32,5,5);
  ellipse(myX+18,myY+18,5,5);
  ellipse(myX+32,myY+18,5,5);
  } else if (number == 6){
  fill(#2C2222);
  ellipse(myX+18,myY+35,5,5);
  ellipse(myX+18,myY+25,5,5);
  ellipse(myX+32,myY+25,5,5);
  ellipse(myX+18,myY+15,5,5);
  ellipse(myX+32,myY+15,5,5); 
  ellipse(myX+32,myY+35,5,5);  
}
}

}
void mousePressed(){
 redraw(); 
}
