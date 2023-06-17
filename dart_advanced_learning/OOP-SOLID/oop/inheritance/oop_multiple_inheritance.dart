abstract class ISwimmer {
  void swim();
}

abstract class IFlyer {
  void fly();
}

class Duck implements ISwimmer, IFlyer {
  @override
  void swim() {
    print("Ördek yüzüyor.");
  }

  @override
  void fly() {
    print("Ördek uçuyor.");
  }
}

void main() {
  Duck duck = Duck();
  duck.swim(); // Ördek yüzüyor.
  duck.fly(); // Ördek uçuyor.
}
