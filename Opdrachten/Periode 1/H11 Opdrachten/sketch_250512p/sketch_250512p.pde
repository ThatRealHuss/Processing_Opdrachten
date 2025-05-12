int[] array = {1, 2, 3, 4, 5, 1, 2, 3, 1, 4}; // Een array met minstens 10 elementen, waarin enkele getallen meerdere keren voorkomen.
int zoekwaarde = 1; // De waarde die we willen zoeken in de array.
int aantalKeer = 0; // Een variabele om het aantal keren bij te houden dat de zoekwaarde voorkomt.

void setup() {
  size(400, 400); // Maakt een venster van 400x400 pixels.
  background(255); // Zet de achtergrond op wit.
  
  // Loop door de array heen en tel hoe vaak de zoekwaarde voorkomt.
  for (int i = 0; i < array.length; i++) {
    if (array[i] == zoekwaarde) {
      aantalKeer++;
    }
  }
  
  // Print het resultaat in de console.
  println("De waarde " + zoekwaarde + " komt " + aantalKeer + " keer voor in de array.");
}

void draw() {
  // De draw functie is hier niet nodig, omdat we alleen informatie naar de console willen printen.
}
