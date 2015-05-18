class GameObject
{
  PVector position;
  PVector forward; 
  float speed;
  float theta;
  PVector velocity;
  PVector acceleration;
  PVector force;
  float mass;

  GameObject()
  {
    this(width / 2, height / 2); 
    forward = new PVector(0, -1);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    force = new PVector(0,0);
    mass = 1.0f;
  }

  GameObject(float x, float y)
  {
    position = new PVector(x, y);
  }
}

