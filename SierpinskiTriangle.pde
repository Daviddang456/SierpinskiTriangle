int moverX = 280;
int moverY = 600;
int len = 20;

public void setup()
{
  size(600, 600);
  
}
public void draw()
{
  background(0);	
  sierpinski(moverX, moverY, len);
}
public void keyPressed()//optional
{ if(key == CODED){
	if(keyCode == UP){
   len = len + 6;
   moverX = moverX - 3;
  }else if(keyCode == DOWN){
  	len = len - 6;
  	moverX = moverX + 3;
  }
 }
  if(len > 600){
  	len = 20;
  	moverX = 280;
  }else if(len < 20){
  	len = 20;
  	moverX = 280;
  }
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20){
  	fill(255);
  	triangle(x, y, (x + x + len)/2, y - len, x + len, y);
  }else{
  	fill(255);
  	sierpinski(x, y, len/2);
  	sierpinski(x + len/2, y, len/2);
  	sierpinski(x + len/4, y - len/2, len/2);
  	
  }
}