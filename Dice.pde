void setup()
{
	size(600,600);
	noLoop();
}
void draw()
{
	for(int x = 0; x < 600; x = x + 60)
	{
		dice = new Die(x, 0);
		dice.roll();
		dice.show();
		//if (dice.value < 7)
		//{
		//	sum = sum + dice.value;
		//}
	}
}
void mousePressed()
{
	redraw();
}
class Die
{
	//int value;
	int myX, myY; 
	Die(int x, int y) 
	{	
	`	//value = (int)()	
		myX = (int)(Math.random()*600);
		myY = (int)(Math.random()*600);
	}
	void roll()
	//{
		//value = (int)(Math.random()*7);
		myX = x;
		myY = y;
	//}
	void show()
	{
		rect(myX, myY, 60, 60);
		ellipse(myX + 30, myY + 30, 10, 10);
	}
}
