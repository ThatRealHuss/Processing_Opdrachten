int frogX, frogY, frogSize;
int laneHeight;
int[] carX, carSpeed;
int numCars = 3;
int numLanes = 5;
boolean gameOver = false;
int score = 0;

void setup() {
  size(400, 600);
  frogSize = 20;
  laneHeight = height / (numLanes + 2); // +2 for start and end zones
  frogX = width / 2;
  frogY = height - laneHeight / 2;

  carX = new int[numCars * numLanes];
  carSpeed = new int[numCars * numLanes];

  // Initialize cars
  for (int i = 0; i < numLanes; i++) {
    for (int j = 0; j < numCars; j++) {
      carX[i * numCars + j] = int(random(width));
      carSpeed[i * numCars + j] = int(random(1, 4)) * (i % 2 == 0 ? 1 : -1); // Alternate direction
    }
  }
}

void draw() {
  background(100);

  // Draw lanes
  for (int i = 1; i <= numLanes; i++) {
    fill(50);
    rect(0, i * laneHeight, width, laneHeight);
  }

  // Draw start and end zones
  fill(0, 200, 0);
  rect(0, 0, width, laneHeight);
  rect(0, height - laneHeight, width, laneHeight);

  // Draw cars
  fill(255, 0, 0);
  for (int i = 0; i < numLanes; i++) {
    for (int j = 0; j < numCars; j++) {
      rect(carX[i * numCars + j], (i + 1) * laneHeight + laneHeight / 4, 40, laneHeight / 2);
      carX[i * numCars + j] += carSpeed[i * numCars + j];

      // Wrap cars around
      if (carX[i * numCars + j] > width) {
        carX[i * numCars + j] = -40;
      } else if (carX[i * numCars + j] < -40) {
        carX[i * numCars + j] = width;
      }
    }
  }

  // Draw frog
  fill(0, 255, 0);
  ellipse(frogX, frogY, frogSize, frogSize);

  // Collision detection
  for (int i = 0; i < numLanes; i++) {
    for (int j = 0; j < numCars; j++) {
      if (dist(frogX, frogY, carX[i * numCars + j] + 20, (i + 1) * laneHeight + laneHeight / 2) < frogSize / 2 + 20) {
        gameOver = true;
      }
    }
  }

  // Check for win
  if (frogY < laneHeight) {
    score++;
    resetFrog();
  }

  // Game Over
  if (gameOver) {
    textSize(32);
    textAlign(CENTER, CENTER);
    fill(255);
    text("Game Over!\nScore: " + score, width / 2, height / 2);
    noLoop();
  }

  // Display Score
  textSize(16);
  textAlign(LEFT, TOP);
  fill(255);
  text("Score: " + score, 10, 10);
}

void keyPressed() {
  if (!gameOver) {
    if (keyCode == UP) {
      frogY -= laneHeight;
    } else if (keyCode == DOWN) {
      frogY += laneHeight;
    } else if (keyCode == LEFT) {
      frogX -= laneHeight;
    } else if (keyCode == RIGHT) {
      frogX += laneHeight;
    }

    // Keep frog within bounds
    frogX = constrain(frogX, frogSize / 2, width - frogSize / 2);
    frogY = constrain(frogY, frogSize / 2, height - laneHeight / 2);
  }
}

void resetFrog() {
  frogX = width / 2;
  frogY = height - laneHeight / 2;
}
