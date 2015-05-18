void setup()
{
  size(600, 600);
  player = new Player(width / 2, height / 1.1);
  treasure = new Treasure(width / 2, height / 30, color(255,255,0));

  cars.add(new Car(width / 3, height / 2, color(255, 0, 0)));
  cars.add(new Car(width / 2, height / 5, color(0, 255, 0)));
  cars.add(new Car(width / 1.2, height / 1.275, color(0, 0, 255)));
}

int numcars = 3;
int score = 0;
ArrayList<Car> cars = new ArrayList<Car>();

Car car;
Player player;
Treasure treasure;

boolean[] keys = new boolean[526];

float timeDelta = 1.0f / 60.0f;

void draw()
{
  background(0);
  drawRoad(50, 0);
  drawRoad(225, 0);
  drawRoad(400, 0);
  player.display();
  player.move();
  treasure.display();
  treasure.Score();
  for (Car car : cars)
  {
    car.display();
    car.move();
    car.kill();
  }
  
  text( "Score =" + score, width / 9 , height - 30);
}

void drawRoad(float y, float w)
{
  stroke(255);
  line(w, y, w + width, y);
  line(w, y + 100, w + width, y + 100);
  for ( w = 0; w < 650; w += 50)
  {
    line(w - 25, y + 50, w, y + 50);
  }
}

void keyPressed()
{
  keys[keyCode] = true;
}

void keyReleased()
{
  keys[keyCode] = false;
}

float distance(float x1, float y1, float x2, float y2)
{
  float xDist = x2 - x1;
  float yDist = y2 - y1;
  float dist = sqrt(xDist * xDist + yDist * yDist);
  return dist;
}
