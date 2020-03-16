public class Enemy {
  int x = 200;
  int y = 200;
  float easing2 = 0.01;
  Enemy (int x, int y, float easing ){
   this.x = x;
   this.y = y;
   easing2 = easing;
  }
  public void draw() {
    
    
    float targetX = mouseX;
    float dx = targetX - x;
    x += dx * easing2;
  
    float targetY = mouseY;
    float dy = targetY - y;
    y += dy * easing2;
 
 
   fill(255,0,0);
   triangle(x + 15, y + 75, x + 43, y + 20, x + 71, y + 75);
  
   float distancex = me.x- x;
   float distancey = me.y- y;
   double totaldistance = Math.sqrt(distancex*distancex + distancey * distancey);
   if (totaldistance<40){
     score--;
     //x = 400;
    // y= 400;
     x = (int)(Math.random() * 400 + 100);
     y= (int)(Math.random() * 400 + 100);
   }
  
  }
}
