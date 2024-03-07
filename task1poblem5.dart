 main() {
  String input = "This is a sample string with spaces";
  String output = removeWhitespaces(input);
  print(output);
}

String removeWhitespaces(String input) {
  return input.replaceAll(' ', '');
}