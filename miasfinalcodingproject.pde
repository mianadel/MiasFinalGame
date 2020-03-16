import java.util.Date;
float x;
float y;
float easing = 0.05;
int w = 690;
int h = 810;
float scale = 1;
int bgx = 0;
int bgy = 0;
int score = 0;
int maxTime = 15;
Date time = new Date();
Enemy one = new Enemy(500,500,0.01);
Enemy two = new Enemy(200,200,0.02);
Player me = new Player(00,00);
Collectible great = new Collectible(200,200);

PImage img;
void setup() {
  img = loadImage("body2.png");
  size(690, 810); 
  noStroke();  
}

void draw() { 



  scale = scale < 2.75? scale+0.003: scale;
  image(img, bgx > -600? bgx--: bgx , bgy > -550? bgy--: bgy,w * scale,h * scale);

  //-600 -550
  

  
  String s = "Score:  " + score;
  fill(255);
  text(s, 10, 10, 70, 80);  // Text wraps within text box
  
 
  fill(255);
 text("Time Remaning: "+ (maxTime - (int)(((new Date()).getTime() - time.getTime()) * 0.001)), 10, 40); 

  one.draw();
  two.draw();
  me.draw();
  great.draw();
}
