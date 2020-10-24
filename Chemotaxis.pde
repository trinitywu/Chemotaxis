 Bacteria[] array = new Bacteria[100]; 
 void setup()   
 {     
   size(500, 500);
   for(int i = 0; i < array.length; i++)
   {
     array[i] = new Bacteria();
   }
 }   
 void draw()   
 {    
   background(209, 244, 252);
   for(int i = 0; i < array.length; i++)
   {
     array[i].show();
     array[i].move();
   }
   fill(255);
   rect(100, 300, 300, 25, 10);
   rect(125, 300, 250, 150, 30);
 }  
 class Bacteria    
 {     
   int myColor;
   int mySize;
   int myX;
   float myY;
   float mySpeed;
   Bacteria()
   {
     myColor = color((int)(Math.random()*127)+128, (int)(Math.random()*127)+128, (int)(Math.random()*127)+128, (int)(Math.random()*230));
     mySize = (int)(Math.random()*20)+5;
     myX = (int)(Math.random()*30)+230;
     myY = (int)(Math.random()*300);
   }
   void move()
   {
     myY = myY + (int)(Math.random()*3)-2;
     if(myY < -30)
     {
       myY = 300;
       myX = (int)(Math.random()*30)+230;
     }
     if(dist(mouseX, mouseY, myX, myY) < mySize/2+50 && mouseX < myX)
     {
       myX = myX + (int)(Math.random()*5)-1;
     } else if(dist(mouseX, mouseY, myX, myY) < mySize/2+50 && mouseX > myX)
     {
       myX = myX + (int)(Math.random()*3)-2;
     } else
     {
       myX = myX + (int)(Math.random()*3)-1;
     }
     if(mousePressed == true)
     {
         if(myX < mouseX)
         {
           myX = myX + (int)(Math.random()*6);
         }
         if(myX > mouseX)
         {
           myX = myX - (int)(Math.random()*5)-1;
         } 
         myY = myY - (int)(Math.random()*5)-1;
     }
   }
   void show()
   {
     fill(myColor);
     noStroke();
     ellipse(myX, myY, mySize, mySize+(int)(Math.random()*11));
   }
 }    
