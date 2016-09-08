void setup()
{
	size(600,600);
	noLoop();
}
void draw()
{
	for(int x = 0; x < 600; x = x + 140)
	{
    for(int y = 0; y < 600; y = y + 140)
		 {
       Die dice = new Die(x+50, y+50);
		   dice.roll();
       dice.show();
      }
	}
}
void mousePressed()
{
	redraw();
}
class Die
{
	int value;
	int myX, myY; 
	Die(int x, int y) 
	{	
		roll();
		myX = x+10;
		myY = y+10;
	}
	void roll()
	{
		value = (int)(Math.random()*6)+1;
	}
	void show()
	{
		rect(myX, myY, 60, 60);
    if(value == 1)
    {
      ellipse(myX+30, myY+30, 10, 10);
    }
    else if(value == 2)
    {
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+50, myY+50, 10, 10);
    }
    else if(value == 3)
    {
      ellipse(myX+30, myY+30, 10, 10);
      ellipse(myX+50, myY+10, 10, 10);
      ellipse(myX+10, myY+50, 10, 10);
    }
    else if(value == 4)
    {
      ellipse(myX+50, myY+10, 10, 10);
      ellipse(myX+10, myY+50, 10, 10);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+50, myY+50, 10, 10);
    }
    else if(value == 5)
    {
      ellipse(myX+50, myY+10, 10, 10);
      ellipse(myX+10, myY+50, 10, 10);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+50, myY+50, 10, 10);
      ellipse(myX+30, myY+30, 10, 10);
    }
    else if(value == 6)
    {
      ellipse(myX+50, myY+10, 10, 10);
      ellipse(myX+10, myY+50, 10, 10);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+50, myY+50, 10, 10);
      ellipse(myX+10, myY+30, 10, 10);
      ellipse(myX+50, myY+30, 10, 10);
    }
    
	}
}