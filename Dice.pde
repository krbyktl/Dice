void setup()
{
	size(600,600);
	background(255,0,0);
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
    	sum = value;
	}
	text("The sum is" + sum, 300, 550);
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
	  fill(255);
	  rect(myX, myY, 60, 60);
    if(value == 1)
    {
      fill(0);
	  ellipse(myX+30, myY+30, 10, 10);
    }
    else if(value == 2)
    {
      fill(0);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+50, myY+50, 10, 10);
    }
    else if(value == 3)
    {
      fill(0);
      ellipse(myX+30, myY+30, 10, 10);
      ellipse(myX+50, myY+10, 10, 10);
      ellipse(myX+10, myY+50, 10, 10);
    }
    else if(value == 4)
    {
      fill(0);
      ellipse(myX+50, myY+10, 10, 10);
      ellipse(myX+10, myY+50, 10, 10);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+50, myY+50, 10, 10);
    }
    else if(value == 5)
    {
      fill(0);
      ellipse(myX+50, myY+10, 10, 10);
      ellipse(myX+10, myY+50, 10, 10);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+50, myY+50, 10, 10);
      ellipse(myX+30, myY+30, 10, 10);
    }
    else if(value == 6)
    { 
      fill(0);
      ellipse(myX+50, myY+10, 10, 10);
      ellipse(myX+10, myY+50, 10, 10);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+50, myY+50, 10, 10);
      ellipse(myX+10, myY+30, 10, 10);
      ellipse(myX+50, myY+30, 10, 10);
    }
    
	}
}