class Car extends GameObject
{
  float w, l;
  float halfWidth;   
  float halfLength;   
  float carLength = 40;
  float carWidth = 30;
  PVector position;
  PVector look;
  float speed = 7.5;
  float rot = 0; // Sideways
  color c;

  Car(float x, float y, color c)
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
    rect(w - 50, l - 40, w + 100, l + 40);
    rect(w - 60, l - 30, w + 60, l + 30);
    popMatrix();
  }

  void move()
  {
    if (position.x <  -70)
    {

      position.x += 800;
    } else
    {
      position.x -= speed;
    }
    if (position.x < 0 - 60)
    {
      reset();
    }
  }

  void reset()
  {
    c = color(random(255), random(255), random(255));
  }
  
  void kill()
  {
    if(dist(player.position.x, player.position.y, position.x, position.y) < carWidth)
    {
      score = 0;
      player.position.x = width / 2;
      player.position.y = height / 1.1;
      treasure.position.x = width / 2;
      treasure.position.y =height / 30;
    }
  }
}

