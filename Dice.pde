void setup()
{
	size(800, 840);
  noLoop();
}
void draw()
{
  int totalValue = 0;
	background(0);
for(int y = 6; y < 780; y = y + 50)
{
  for(int x = 6; x < 780; x = x + 50)
  {
    Die joeMama = new Die(x, y);
    joeMama.roll();
    joeMama.show();
    totalValue += joeMama.value;
  }
}
    textSize(30);
    text("Sum: " + totalValue, 320, 820);
}
void mousePressed()
{
	redraw();
}
class Die 
{
	
	int value, myX, myY;
	Die(int x, int y) 
	{
		value = 0;
    myX = x;
    myY = y;
	}
	void roll()
	{
	  value = (int)((Math.random()) * 6) + 1;
	}
	void show()
	{
		fill(255);
    rect(myX, myY, 30, 30);
    int siz = 5;
    if(value == 1)
    {
      fill((int)(Math.random() * 255) + 1, (int)(Math.random() * 255) + 1,(int)(Math.random() * 255) + 1);
      ellipse(myX + 15, myY + 16, siz, siz);     
    }
    if(value == 2)
    {
      fill((int)(Math.random() * 255) + 1, (int)(Math.random() * 255) + 1,(int)(Math.random() * 255) + 1);
      ellipse(myX + 10, myY + 10, siz, siz);
      ellipse(myX + 20, myY + 20, siz, siz);   
    }
    if(value == 3)
    {
      fill((int)(Math.random() * 255) + 1, (int)(Math.random() * 255) + 1,(int)(Math.random() * 255) + 1);
      ellipse(myX + 8, myY + 8, siz, siz);
      ellipse(myX + 16, myY + 16, siz, siz);
      ellipse(myX + 24, myY + 24, siz, siz);
    }
    if(value == 4)
    {
      fill((int)(Math.random() * 255) + 1, (int)(Math.random() * 255) + 1,(int)(Math.random() * 255) + 1);
      ellipse(myX + 10, myY + 10, siz, siz);
      ellipse(myX + 10, myY + 20, siz, siz);
      ellipse(myX + 20, myY + 10, siz, siz);
      ellipse(myX + 20, myY + 20, siz, siz);
    }
    if(value == 5)
    {
      fill((int)(Math.random() * 255) + 1, (int)(Math.random() * 255) + 1,(int)(Math.random() * 255) + 1);
      ellipse(myX + 7, myY + 7, siz, siz);
      ellipse(myX + 7, myY + 23, siz, siz);
      ellipse(myX + 23, myY + 7, siz, siz);
      ellipse(myX + 23, myY + 23, siz, siz);
      ellipse(myX + 15, myY + 15, siz, siz);
    }
    if(value == 6)
    {
      fill((int)(Math.random() * 255) + 1, (int)(Math.random() * 255) + 1,(int)(Math.random() * 255) + 1);
      ellipse(myX + 8, myY + 5, siz, siz);
      ellipse(myX + 8, myY + 15, siz, siz);
      ellipse(myX + 8, myY + 25, siz, siz);
      ellipse(myX + 22, myY + 5, siz, siz);
      ellipse(myX + 22, myY + 15, siz, siz);
      ellipse(myX + 22, myY + 25, siz, siz);
    }
    
	}
}
