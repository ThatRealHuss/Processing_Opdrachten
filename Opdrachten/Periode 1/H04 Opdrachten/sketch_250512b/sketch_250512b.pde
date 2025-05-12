int mijnEersteVariabele;

void setup() {
  mijnEersteVariabele = 10;
  println("Initial value: " + mijnEersteVariabele);

  // Equivalent of *=
  mijnEersteVariabele = mijnEersteVariabele * 10;
  println("After *= 10: " + mijnEersteVariabele);

  // Equivalent of /=
  mijnEersteVariabele = mijnEersteVariabele / 10;
  println("After /= 10: " + mijnEersteVariabele);

  // Equivalent of -=
  mijnEersteVariabele = mijnEersteVariabele - 10;
  println("After -= 10: " + mijnEersteVariabele);
}
