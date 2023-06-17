//**
//Nesnelerin başka nesneleri içerme ilişkisidir.
// Bir sınıf, başka sınıfların nesnelerini içerebilir
//ve bu sayede karmaşık ilişkileri ve yapıları yönetebilir. */

class Engine {
  void start() {
    print("Motor çalıştı");
  }
}

class Car {
  Engine? engine;

  Car() {
    engine = Engine();
  }

  void startCar() {
    engine?.start();
    print("Araba çalıştı");
  }
}

void main() {
  Car car = Car();
  car.startCar();
}
