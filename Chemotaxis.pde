Mover[] mole;
float houseY=600;
void setup(){
  size(800,800);
  background(0);
  mole= new Mover[70];
  for(int i=0; i<mole.length;i++){
    mole[i]= new Mover(400,700);
 
  }
}
void draw(){
  background(67, 179, 240);
  for(int i=0;i<mole.length;i++){
    mole[i].move();
    mole[i].show();
    stroke(0);
    line(mole[i].myX, mole[i].myY+25, 400,houseY-40);
  }
  stroke(0);
  //left building
 fill(237, 157, 221);
  rect(300,houseY+50,100,100);
  //right building
  fill(122, 209, 100);
  rect(400,houseY+50,100,100);
  //roof
  fill(46, 45, 43);
  rect(300,houseY,200,50);
  fill(242, 240, 85);
  triangle(400,houseY+50,500,houseY+50,450,houseY-100);
  rect(325,houseY,50,50);
   fill(126, 175, 247);
  triangle(320,houseY+5,380,houseY+5,350,houseY-35);
  //chimney
  fill(59, 37, 2);
  rect(390,houseY-40,20,50);
  //windows
  fill(46, 45, 43);
  stroke(237, 157, 221);
  rect(440,houseY-10,20,50);
  rect(440,houseY-10,20,25);
  stroke(0);
  fill(46, 45, 43);
  stroke(237, 157, 221);
  rect(440,houseY+70,20,50);
  rect(440,houseY+70,20,25);
  //door
  stroke(0);
  strokeWeight(5);
  fill(59, 37, 2);
  rect(340,houseY+100, 30,50);
  fill(219, 211, 46);
  ellipse(350,houseY+125,10,10);
  //ground
  stroke(0);
  fill(33, 128, 9);
  rect(0,750, 800,400);
  //move house
  if(mole[2].myY<350){
   houseY-=1;
   System.out.println(houseY);
   //System.out.println(mole[2].myY);
  }
 
 
 
}
class Mover{
  int myX, myY, myColor;
  Mover(int x, int y){
    myX=x;
    myY=y;
    myColor=color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  void move(){
    myX= myX+(int)(Math.random()*9)-4;
    myY= myY+(int)(Math.random()*3)-2;
  }
  void show(){
    fill(myColor);
    ellipse(myX, myY, 50,50);
  }
}
