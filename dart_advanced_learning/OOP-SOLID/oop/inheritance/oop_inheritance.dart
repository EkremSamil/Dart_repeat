class Animal {
  String? name;

  void speak() {
    print("$name ses çıkarıyor.");
  }
}

class Cat extends Animal {
  Cat() {
    name = "Kedi";
  }
}

class Dog extends Animal {
  Dog() {
    name = "Köpek";
  }
}

void main() {
  Dog dog = Dog();

  Cat cat = Cat();

  dog.speak();
  cat.speak();
}
