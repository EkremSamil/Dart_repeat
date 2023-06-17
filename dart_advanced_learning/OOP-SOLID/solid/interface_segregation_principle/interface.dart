abstract class Animal {
  void eat();
  void sleep();
}

abstract class Swimmable {
  void swim();
}

abstract class Flyable {
  void fly();
}

class Dog implements Animal {
  @override
  void eat() {
    print("Dog is eating");
  }

  @override
  void sleep() {
    print("Dog is sleeping");
  }
}

class Duck implements Animal, Swimmable, Flyable {
  @override
  void eat() {
    print("Duck is eating");
  }

  @override
  void sleep() {
    print("Duck is sleeping");
  }

  @override
  void swim() {
    print("Duck is swimming");
  }

  @override
  void fly() {
    print("Duck is flying");
  }
}

void main() {
  Animal dog = Dog();
  Animal duck = Duck();

  dog.eat(); // Çıktı: Dog is eating
  dog.sleep(); // Çıktı: Dog is sleeping

  duck.eat(); // Çıktı: Duck is eating
  duck.sleep(); // Çıktı: Duck is sleeping
  (duck as Swimmable).swim(); // Çıktı: Duck is swimming
  (duck as Flyable).fly(); // Çıktı: Duck is flying
}
