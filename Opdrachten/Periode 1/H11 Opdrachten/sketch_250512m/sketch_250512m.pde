int[] array = new int[10]; // Maak een array van lengte 10 en type int

void setup() {
  size(400, 400); // Stel de grootte van het venster in
  
  // Wijzig alle waardes van de array
  for (int i = 0; i < array.length; i++) {
    array[i] = i * 10; // Geef elke positie in de array een waarde
  }
  
  // Print de array in de console
  println("De array bevat de volgende waardes:");
  for (int i = 0; i < array.length; i++) {
    println(array[i]);
  }
}

void draw() {
  // De draw functie wordt continu herhaald, maar we hebben hier niets aan
  // omdat we alleen de console willen gebruiken om de array te printen.
}
