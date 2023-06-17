/// Soyutlama (Abstraction): Karmaşık bir sistemi basitleştirmek için
///  gereksiz detayları gizler. Yalnızca önemli özelliklerin ve işlevlerin
/// odaklanılmasını sağlar.
///
/// Kısaca ortak özellik class'ı

abstract class Animal {
  void makeSound();
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Hav hav!");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Miyav!");
  }
}

void main() {
  Animal dog = Dog();
  dog.makeSound(); // "Hav hav!" çıktısı verir

  Animal cat = Cat();
  cat.makeSound(); // "Miyav!" çıktısı verir
}
