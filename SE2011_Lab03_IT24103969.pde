int x1 = 90;
int x2 = 90;
int x3 = 90;
int y = 55;

void setup(){
  size(400,300);
}


void draw(){
  background(230);
  
  fill(93,73,48);
  rect(0,30,80,50);
  rect(0,130,80,50);
  rect(0,230,80,50);
  
  fill(72,86,165);
  ellipse(x1,y,40,40);
  x1=x1+3;

  fill(237,221,38);
  ellipse(x2,y+95,40,40);
  x2=x2+2;

  fill(72,165,97);
  ellipse(x3,y+198,40,40);
  x3=x3+4;
  
  //target
  fill(255,0,0);
  ellipse(mouseX, mouseY, 10,60);
  
  if(x1>=mouseX){
    x1=90;    
  }
  if(x2>=mouseX){
    x2=90;    
  }
  if(x3>=mouseX){
    x3=90;      
  }
}
