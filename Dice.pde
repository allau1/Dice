int total = 0;
 void setup()
  {
      noLoop();
      size(400,400);
  }
  void draw()
  {
      //your code here
      background(0,0,0);
      for (int x = 25; x <= 350;x = x + 60){
        for (int y = 10; y <= 300 ; y = y + 60){
      Die bob = new Die(x,y);
      bob.show();
        }
      }
    fill(255,255,255);
    text("total = " + total,180,350);
  }
  void mousePressed()
  {
      redraw();
      total = 0;
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int num,myX,myY;
      Die(int x, int y) //constructor
      {
          //variable initializations here
          roll();
          myX = x;
          myY = y;
         
      }
      void roll(){
          //your code here
           num = (int)(Math.random()*6+1);
           total = total + num;
      }
      void show(){
          //your code here
          fill(255,255,255);
          rect(myX,myY,50,50);
          fill(0,0,0);
          if (num == 1){
            ellipse(myX+25,myY+25,5,5);
          } else if (num == 2){
          ellipse(myX+25,myY+15,5,5);
          ellipse(myX+25,myY+35,5,5);
          } else if (num == 3){
            ellipse(myX+15,myY+35,5,5);
            ellipse(myX+35,myY+15,5,5);
            ellipse(myX+25,myY+25,5,5);
          }else if (num == 4){
            ellipse(myX+15,myY+15,5,5);
            ellipse(myX+15,myY+35,5,5);
            ellipse(myX+35,myY+15,5,5);
            ellipse(myX+35,myY+35,5,5);
          }else if (num == 5){
            ellipse(myX+15,myY+15,5,5);
            ellipse(myX+15,myY+35,5,5);
            ellipse(myX+35,myY+15,5,5);
            ellipse(myX+35,myY+35,5,5);
            ellipse(myX+25,myY+25,5,5);
          }else if (num == 6){
            ellipse(myX+15,myY+15,5,5);
            ellipse(myX+15,myY+25,5,5);
            ellipse(myX+15,myY+35,5,5);
            ellipse(myX+35,myY+15,5,5);
            ellipse(myX+35,myY+25,5,5);
            ellipse(myX+35,myY+35,5,5);
  }
  }
  }
