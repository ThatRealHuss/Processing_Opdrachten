String[] namen = {"Pieter", "Jan", "Klaas", "Henk", "Erik"};

void setup() {
  boolean gevonden = false;
  
  for (int i = 0; i < namen.length; i++) {
    if (namen[i].equals("Jan")) {
      gevonden = true;
      break;
    }
  }
  
  if (gevonden) {
    println("De naam 'Jan' is gevonden in de array.");
  } else {
    println("De naam 'Jan' is niet gevonden in de array.");
  }
}
