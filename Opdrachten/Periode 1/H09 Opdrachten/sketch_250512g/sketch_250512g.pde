void setup() {
    double getal1 = 10.0;
    double getal2 = 20.0;
    double gemiddelde = berekenGemiddelde(getal1, getal2);
    println("Het gemiddelde van " + getal1 + " en " + getal2 + " is " + gemiddelde);
}

double berekenGemiddelde(double cijfer1, double cijfer2) {
    return (cijfer1 + cijfer2) / 2;
}
