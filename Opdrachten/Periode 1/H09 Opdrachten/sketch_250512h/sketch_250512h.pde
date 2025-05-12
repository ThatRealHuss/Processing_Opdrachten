void setup() {
  size(400, 400);
  background(255);
  // Roep de functie aan om een vierkant te tekenen
  tekenVierkant(100, 100, 200, 200);
}

void tekenVierkant(int x, int y, int breedte, int hoogte) {
  // Teken de vierkant door vier lijnen te tekenen
  stroke(0); // Zet de lijnkleur op zwart
  line(x, y, x + breedte, y); // Bovenkant
  line(x + breedte, y, x + breedte, y + hoogte); // Rechterkant
  line(x + breedte, y + hoogte, x, y + hoogte); // Onderkant
  line(x, y + hoogte, x, y); // Linkerkant
}
