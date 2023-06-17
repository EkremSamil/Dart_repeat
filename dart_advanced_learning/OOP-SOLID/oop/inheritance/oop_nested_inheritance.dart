class Animal {
  void eat() {
    print("Hayvan yer");
  }
}

class Mammal extends Animal {
  void breathe() {
    print("Hayvan Nefes alır");
  }
}

class Dolphin extends Mammal {
  void swim() {
    print("Hayvan yüzer");
  }
}

void main() {
  Dolphin dolphin = Dolphin();

  dolphin.eat();
  dolphin.breathe();
  dolphin.swim();
}
