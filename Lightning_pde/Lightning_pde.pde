int startX = 300;
int startY = 0;
int endX = 0;
int endY = 300;
int y = 40;
void setup()
{
  background(0);
  size (600,600);
  noLoop();
}
void draw()
{
  strokeWeight(7);
  stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  endX = startX + (int)(Math.random()*15)-7;
  endY = startY + (int)(Math.random()*15);
  line(startX,startY,endX,endY);
  startX = endX;
  startY = endY;
  noFill();
  strokeWeight(3);
  arc(100,y,60,60,PI/8,7*PI/8);
  fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  ellipse(85,y,10,15);
  ellipse(115,y,10,15);
  y = y+(int)(Math.random()*100);
}

void mousePressed()
{
  redraw();
}