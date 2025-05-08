float dotX[] = new float[2];
float dotY[] = new float[2];
float dotSize = 20;
float speed = 3;
int score = 0;

void setup() {
  size(400, 400);
  newDot();
  textSize(24); // Increased text size for the score
}

void draw() {
  background(220);

  for (int i = 0; i < 2; i++) {
    dotX[i] += random(-speed, speed);
    dotY[i] += random(-speed, speed);

    dotX[i] = constrain(dotX[i], 0, width);
    dotY[i] = constrain(dotY[i], 0, height);

    fill(0, 255, 0); // Set the fill color to green
    ellipse(dotX[i], dotY[i], dotSize, dotSize);
  }

  fill(0); // Set fill color to black for the text
  text("Score: " + score, 10, 30); // Adjusted position for larger text
}

void mousePressed() {
  for (int i = 0; i < 2; i++) {
    float distance = dist(mouseX, mouseY, dotX[i], dotY[i]);
    if (distance < dotSize / 2) {
      score++;
      dotX[i] = random(width); // Respawn ONLY the clicked dot
      dotY[i] = random(height);
      break;
    }
  }
}

void newDot() {
  for (int i = 0; i < 2; i++) {
    dotX[i] = random(width);
    dotY[i] = random(height);
  }
}
