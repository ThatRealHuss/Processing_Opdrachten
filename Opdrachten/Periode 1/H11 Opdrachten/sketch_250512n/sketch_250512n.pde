int[] tafelVan12 = new int[10]; // Maak een array met een lengte van 10

void setup() {
  for (int i = 0; i < tafelVan12.length; i++) {
    tafelVan12[i] = (i + 1) * 12; // Sla de tafel van 12 op in de array
  }
  
  // Print de hele array uit in de console
  for (int i = 0; i < tafelVan12.length; i++) {
    println(tafelVan12[i]);
  }
}

void draw() {
  // De draw functie is niet nodig voor deze opdracht, maar moet wel aanwezig zijn in een Processing sketch.
}
