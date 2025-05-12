String[] myArray;

void setup() {
  size(200, 200);
  
  // Initialize the array with a length of 26
  myArray = new String[26];
  
  // Assign values to each element of the array
  for (int i = 0; i < myArray.length; i++) {
    myArray[i] = "Element " + (char)('A' + i); // Assigning string values with corresponding letters
  }
  
  // Print the array to the console
  for (int i = 0; i < myArray.length; i++) {
    println(myArray[i]);
  }
}

void draw() {
  // The draw function is not used in this example
}
