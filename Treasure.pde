class Treasure extends GameObject
{
  float w, h;
  float halfWidth;
  float halfHeight;
  color c;
  PVector position;
  
  float boxSize = 30;

  Treasure(float x, float y, color c)
  {
    position = new PVector(x, y);
    this.c = c;
  }

  void display()
  {
    pushMatrix();
    stroke(c);
    fill(c);
    translate(position.x, position.y);
    rect(w, h, w + 20, h + 20);
    
    popMatrix();
  }
  
  void Score()
  {
   if(dist(player.position.x, player.position.y, position.x, position.y) < boxSize)
   {
      score ++; 
      position.x = random(0,width);
      position.y = random(0,height);
   }
  }
}

