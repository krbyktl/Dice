void setup()
{
	size(620,620);
	noLoop();
	textAlign(CENTER);
}
void draw()
{	
	background(255,0,0);
	int sum = 0;
	for(int x = 0; x < 600; x = x + 60)
	{
    for(int y = 0; y < 600; y = y + 60)
	{
    	Die dice = new Die(x, y);
		dice.roll();
    	dice.show(); 	
    	if(dice.value < 7)
    	{
    		sum = sum + dice.value;
    	}
	}
	}
	textSize(72);
	fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255), 175);
	text("The sum is " + sum, 300, 300);
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
