void setup() {
  size(400, 400); 
  background(255); 
  
  int centerX = width; 
  int centerY = height / 2; 

 
  for (int i = 1; i <= 5; i++) {
    float radius = i * 20; 
    ellipse(centerX, centerY, radius, radius); 
  }
}
