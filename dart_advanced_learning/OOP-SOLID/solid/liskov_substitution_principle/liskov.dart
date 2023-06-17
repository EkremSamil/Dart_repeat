abstract class Animal {
  String sound();
}

class Cat implements Animal {
  @override
  String sound() {
    return "Meow!";
  }
}

class Dog implements Animal {
  @override
  String sound() {
    return "Woof!";
  }
}

class Duck implements Animal {
  @override
  String sound() {
    return "Vak vak";
  }
}

void makeAnimalSound(Animal animal) {
  print(animal.sound());
}

void main() {
  Animal cat = Cat();
  Animal dog = Dog();
  Animal duck = Duck();

  makeAnimalSound(duck);
  makeAnimalSound(cat); // Çıktı: Meow!
  makeAnimalSound(dog); // Çıktı: Woof!
}
