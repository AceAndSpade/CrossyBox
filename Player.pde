class Player extends GameObject
{
  float w, h;
  float halfWidth;
  float halfHeight;
  PVector position;
  PVector forward;
  float speed = 5;
  color c;
  float playerSize = 20;

  Player(float x, float y)
  {
    position = new PVector(x, y);
  }

  void display()
  {
    pushMatrix();
    stroke(255);
    fill(255);
    translate(position.x, position.y);
    rect(w, h, w + 20, h + 20);



    popMatrix();
  }

  void move()
  {
    if (keys[UP])
    {
      position.y -= speed;
    }
    if (keys[LEFT])
    {
      position.x -= speed;
    }
    if (keys[DOWN])
    {
      position.y += speed;
    }
    if (keys[RIGHT])
    {
      position.x += speed;
    }

    if (position.x >= width)
    {
      position.x -= speed * 2;
    }

    if (position.x < 0)
    {
      position.x += speed * 2;
    }

    if (position.y >= height)
    {
      position.y -= speed * 2;
    }

    if (position.y <= 0)
    {
      position.y += speed * 2;
    }
  }
}

