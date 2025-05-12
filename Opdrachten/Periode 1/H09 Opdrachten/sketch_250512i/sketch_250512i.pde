void setup() {
  String result = combineStrings("Hello", " ", "World", "!");
  println(result);
}

String combineStrings(String str1, String str2, String str3, String str4) {
  return str1 + str2 + str3 + str4;
}
