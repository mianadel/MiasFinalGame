public class Collectible {
  int x = 200;
  int y = 200;
 float easing2 = 0.01;
  Collectible (int x, int y ){
    this.x = x;
    this.y = y;
  }
  public void draw() {
  float distancex = me.x- x;
   float distancey = me.y- y;
   double totaldistance = Math.sqrt(distancex*distancex + distancey * distancey);
   if (totaldistance<40){
     score++;
     //x = 400;
    // y= 400;
     x = (int)(Math.random() * 400 + 100);
     y= (int)(Math.random() * 400 + 100);
   }
   
    fill(255);
   square(x, y, 10);

  }
}
