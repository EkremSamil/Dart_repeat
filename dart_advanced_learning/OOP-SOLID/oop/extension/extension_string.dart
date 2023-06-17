extension StringExtension on String {
  String capitalizeFirstLetter() {
    if (isEmpty) {
      return this;
    }
    return this[0].toUpperCase() + substring(1);
  }
}

void main() {
  String message = "hello World";

  String capFirstLetter = message.capitalizeFirstLetter();

  print(capFirstLetter);
}
