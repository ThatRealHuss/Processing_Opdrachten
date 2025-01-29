PImage mouseImage;
PImage catImage;

void setup()
{
  size(1280, 720);

  mouseImage = loadImage("Mouse.png");
  catImage = loadImage("Cat.png");
}
void draw()
{
  background(190);
  image(mouseImage, 100, 100);
  image(catImage, 200, 100);
  int startTime = 0;

startTime = millis();

fill(255);
textSize(128);
textAlign(CENTER);
String currentTime = str((millis() - startTime) / 1000);
text(currentTime, width / 2, 120);

float x = mouseX - mouseImage.width / 2;
float y = mouseY - mouseImage.height / 2;
image(mouseImage, x, y);

this.x = x;

}


  class Circle
{
  float x = 0;
  float y = 0;
  float radius = 1;

  void SetPosition(float x, float y)
  {
    this.x = x;
    this.y = y;
  }

  void SetRadius(float radius)
  {
    this.radius = radius;
  }

  boolean Overlaps(Circle other)
  {
    float dx = x - other.x;
    float dy = y - other.y;
    float dr = radius + other.radius;
    return dx*dx + dy*dy < dr*dr;
  }
}
float dx = x - other.x;
float dy = y - other.y;

float dr = radius + other.radius;

return dx*dx + dy*dy < dr*dr;

Circle playerCircle = new Circle();
Circle catCircle = new Circle();

playerCircle.SetPosition(width / 2, height / 2);
playerCircle.SetRadius(32);

catCircle.SetPosition(200, 100);
catCircle.SetRadius(32);

void draw()
{
  GameLogic();
  Render();
}

void GameLogic()
{
  playerCircle.SetPosition(mouseX, mouseY);

  if (catCircle.Overlaps(playerCircle))
  {
    startTime = millis();
  }
}

background(190);

// Render images
// Cat
float catX = catCircle.x - catImage.width / 2;
float catY = catCircle.y - catImage.height / 2;
image(catImage, catX, catY);

// Mouse
float playerX = mouseX - mouseImage.width / 2;
float playerY = mouseY - mouseImage.height / 2;
image(mouseImage, playerX, playerY);

// Render debug
// Draw cat debug circle
noStroke();
fill(0, 0, 255, 125);
circle(catCircle.x, catCircle.y, catCircle.radius*2);

// Draw mouse debug circle
noStroke();
fill(255, 0, 0, 125);
circle(playerCircle.x, playerCircle.y, playerCircle.radius*2);

// Draw text
fill(255);
textSize(128);
textAlign(CENTER);
String currentTime = str((millis() - startTime) / 1000);
text(currentTime, width / 2, 120);

void GameLogic()
{
  // Player movement
  playerCircle.SetPosition(mouseX, mouseY);

  // Cat movement
  float dx = playerCircle.x - catCircle.x;
  float dy = playerCircle.y - catCircle.y;

  float len = sqrt(dx*dx + dy*dy);

  if (len > 0)
  {
    dx /= len;
    dy /= len;
  }
