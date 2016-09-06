void setup()
{
	size(600,600);
	noLoop();
}
void draw()
{
	for(int x = 0; x < 600; x = x + 100)
	{
		Die dice = new Die(x, 300);
		dice.roll();
		dice.show();
	}
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	Die(int x, int y) //constructor
	{
		//variable initializations here
	}
	void roll()
	{
		if (Math.random() < )
	}
	void show()
	{
		//your code here
	}
}
