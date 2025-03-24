int frogX, frogY, frogSize;
int laneHeight;
float[] carX, carSpeed;
int numCars = 3;
int numLanes = 5;
boolean gameOver = false;
int score = 0;
color grassColor = color(120, 180, 120); // Softer grass
color roadColor = color(60, 60, 60); // Darker road
color carColors[] = {color(255, 100, 100), color(100, 100, 255), color(255, 255, 150)}; // Muted car colors
PFont scoreFont;
int lives = 3;
boolean invincible = false;
int invincibleTimer = 0;
float frogSquash = 1.0; // Squash factor for frog animation
float frogSquashTarget = 1.0; // Target squash factor

void setup() {
  size(400, 600);
  smooth();
  frogSize = 25;
  laneHeight = height / (numLanes + 2);
  frogX = width / 2;
  frogY = height - laneHeight / 2;

  carX = new float[numCars * numLanes];
  carSpeed = new float[numCars * numLanes];

  initializeCars();

  scoreFont = createFont("Arial", 16);
  textFont(scoreFont);
}

void draw() {
  background(180, 200, 220); // Softer background color

  // Draw lanes (grass and road)
  fill(grassColor);
  rect(0, 0, width, laneHeight);
  rect(0, height - laneHeight, width, laneHeight);

  for (int i = 1; i <= numLanes; i++) {
    fill(roadColor);
    rect(0, i * laneHeight, width, laneHeight);

    // Add lane markings (dashed lines)
    stroke(200, 200, 200); // Lighter lane markings
    strokeWeight(2);
    for (int j = 0; j < width; j += 40) {
      line(j, i * laneHeight + laneHeight / 2, j + 20, i * laneHeight + laneHeight / 2);
    }
    noStroke();
  }

  // Draw cars
  for (int i = 0; i < numLanes; i++) {
    for (int j = 0; j < numCars; j++) {
      fill(carColors[j % carColors.length]);
      rect(carX[i * numCars + j], (i + 1) * laneHeight + laneHeight / 4, 40, laneHeight / 2, 5);
      carX[i * numCars + j] += carSpeed[i * numCars + j];

      // Wrap cars around
      if (carX[i * numCars + j] > width) {
        carX[i * numCars + j] = -40;
      } else if (carX[i * numCars + j] < -40) {
        carX[i * numCars + j] = width;
      }
    }
  }

  // Draw Frog with squash animation
  pushMatrix(); // Save the current transformation matrix
  translate(frogX, frogY); // Move the origin to the frog's position
  scale(1.0, frogSquash); // Apply the squash
  fill(0, 200, 0); // Brighter frog color
  ellipse(0, 0, frogSize, frogSize); // Draw the frog at the new origin
  popMatrix(); // Restore the previous transformation matrix

  // Update squash animation
  frogSquash += (frogSquashTarget - frogSquash) * 0.1; // Smoothly interpolate to the target

  // Collision detection
  if (!invincible) {
    for (int i = 0; i < numLanes; i++) {
      for (int j = 0; j < numCars; j++) {
        if (dist(frogX, frogY, carX[i * numCars + j] + 20, (i + 1) * laneHeight + laneHeight / 2) < frogSize / 2 + 20) {
          lives--;
          resetFrog();
          invincible = true;
          invincibleTimer = 60;
          break;
        }
      }
      if (invincible) break;
    }
  } else {
    // Invincibility effect (blinking)
    if (frameCount % 10 < 5) {
      fill(255, 255, 255, 128);
      pushMatrix();
      translate(frogX, frogY);
      scale(1.0, frogSquash);
      ellipse(0, 0, frogSize, frogSize);
      popMatrix();
    }
    invincibleTimer--;
    if (invincibleTimer <= 0) {
      invincible = false;
    }
  }

  // Check for win
  if (frogY < laneHeight) {
    score++;
    resetFrog();
    invincible = true;
    invincibleTimer = 30;
  }

  // Game Over
  if (lives <= 0) {
    gameOver = true;
  }

  if (gameOver) {
    textSize(32);
    textAlign(CENTER, CENTER);
    fill(255);
    text("Game Over!\nScore: " + score + "\nPress SPACE to restart", width / 2, height / 2);
    noLoop();
  }

  // Display Score and Lives
  textAlign(LEFT, TOP);
  fill(255);
  text("Score: " + score + "  Lives: " + lives, 10, 10);
}

void keyPressed() {
  if (key == ' ' && gameOver) {
    gameOver = false;
    score = 0;
    lives = 3;
    resetFrog();
    initializeCars();
    loop();
  } else if (!gameOver) {
    if (keyCode == UP) {
      frogY -= laneHeight;
      frogSquashTarget = 0.8; // Squash when moving up
    } else if (keyCode == DOWN) {
      frogY += laneHeight;
      frogSquashTarget = 1.2; // Stretch when moving down
    } else if (keyCode == LEFT) {
      frogX -= laneHeight;
      frogSquashTarget = 1.0;
    } else if (keyCode == RIGHT) {
      frogX += laneHeight;
      frogSquashTarget = 1.0;
    }

    // Keep frog within bounds
    frogX = constrain(frogX, frogSize / 2, width - frogSize / 2);
    frogY = constrain(frogY, frogSize / 2, height - laneHeight / 2);
  }
}

void resetFrog() {
  frogX = width / 2;
  frogY = height - laneHeight / 2;
  frogSquashTarget = 1.0; // Reset squash
  frogSquash = 1.0;
}

void initializeCars() {
  for (int i = 0; i < numLanes; i++) {
    for (int j = 0; j < numCars; j++) {
      carX[i * numCars + j] = random(width);
      carSpeed[i * numCars + j] = random(1.5, 4.5) * (i % 2 == 0 ? 1 : -1);
    }
  }
}
