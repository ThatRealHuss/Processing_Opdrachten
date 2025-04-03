float dotX, dotY;
float dotSize = 20;
float speed = 3;
int score = 0;

void setup() {
  size(400, 400);
  newDot();
  textSize(24); 
}

void draw() {
  background(220);

  dotX += random(-speed, speed);
  dotY += random(-speed, speed);

  dotX = constrain(dotX, 0, width);
  dotY = constrain(dotY, 0, height);
  
  fill(0, 255, 0);

  ellipse(dotX, dotY, dotSize, dotSize);

  text("Score: " + score, 10, 30);
}

void mousePressed() {
  float distance = dist(mouseX, mouseY, dotX, dotY);
  if (distance < dotSize / 2) {
    score++;
    newDot();
  }
}

void newDot() {
  dotX = random(width);
  dotY = random(height);
}
