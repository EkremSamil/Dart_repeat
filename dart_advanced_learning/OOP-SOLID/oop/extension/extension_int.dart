extension IntegerExtension on int {
  int collection(int a, int b) {
    return a + b;
  }

  int decal(int a, int b) {
    if (a < b) {
      throw Exception("a b den küçük olamaz");
    } else {
      print(a - b);
      return a - b;
    }
  }

  bool isEven() {
    return this % 2 == 0;
  }

  int square() {
    return this * this;
  }
}

void main() {
  int number = 7;
  print(number.isEven);

  int x = 5;
  int squared = x.square();
  print(squared);

  int collection = x.collection(x, x);
  print(collection);

  int decal = x.decal(5, 6);
}
