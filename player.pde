public class Player {
  int x = 200;
  int y = 200;
 float easing2 = 0.01;
  Player (int x, int y ){
    this.x = x;
    this.y = y;
  }
  public void draw() {
  float targetX = mouseX;
  float dx = targetX - x;
  x += dx * easing;
  
  float targetY = mouseY;
  float dy = targetY - y;
  y += dy * easing;
    
    fill(0,255,0);
  ellipse(x, y, 66, 66);

  }
}
