abstract class Animal {
  void eat();
  void sleep();
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

class Cat implements Animal {
  @override
  void eat() {
    print("Cat is eating");
  }

  @override
  void sleep() {
    print("Cat is sleeping");
  }
}

abstract class AnimalStorage {
  void saveAnimal(Animal animal);
}

class DatabaseStorage implements AnimalStorage {
  @override
  void saveAnimal(Animal animal) {
    // Veriyi veritabanına kaydetme işlemleri...
    print("Animal saved to database");
  }
}

class FileManager implements AnimalStorage {
  @override
  void saveAnimal(Animal animal) {
    // Veriyi dosyaya kaydetme işlemleri...
    print("Animal saved to file");
  }
}

class AnimalManager {
  final AnimalStorage animalStorage;

  AnimalManager(this.animalStorage);

  void processAnimal(Animal animal) {
    // Hayvanı işleme işlemleri...
    animal.eat();
    animal.sleep();
    animalStorage.saveAnimal(animal);
  }
}

void main() {
  Animal dog = Dog();

  Animal cat = Cat();

  AnimalStorage databaseStorage = DatabaseStorage();
  AnimalStorage fileManager = FileManager();

  AnimalManager databaseManager = AnimalManager(databaseStorage);
  AnimalManager animalManager = AnimalManager(fileManager);

  databaseManager.processAnimal(dog);
  fileManager.saveAnimal(cat);
}
