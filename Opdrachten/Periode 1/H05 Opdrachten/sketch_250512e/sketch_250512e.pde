void setup() {
  float gewicht = 110; // weight in kg
  float lengte = 1.80; // height in meters (180 cm)
  float bmi = gewicht / (lengte * lengte);
  
  println("Met een gewicht van " + gewicht + " kg en een lengte van " + (lengte * 100) + " cm, is jouw BMI " + nf(bmi, 1, 1) + ".");
}
