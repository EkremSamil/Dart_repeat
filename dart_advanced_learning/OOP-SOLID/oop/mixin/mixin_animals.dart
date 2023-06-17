mixin Flying {
  void fly() {
    print("Flying...");
  }
}

mixin Swiming {
  void swim() {
    print("Swimming...");
  }
}

class Animal {}

class Bird extends Animal with Flying {}

class Fish extends Animal with Swiming {}

class Duck extends Animal with Flying, Swiming {}

void main() {
  Bird bird = Bird();
  bird.fly(); // Çıktı: Flying...

  Fish fish = Fish();
  fish.swim(); // Çıktı: Swimming...

  Duck duck = Duck();
  duck.fly(); // Çıktı: Flying...
  duck.swim(); // Çıktı: Swimming...
}
