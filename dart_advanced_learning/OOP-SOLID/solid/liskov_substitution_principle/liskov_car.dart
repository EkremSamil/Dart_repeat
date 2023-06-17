class Vehicle {
  void startEngine() {
    print("******* \n Engine started");
  }

  void stopEngine() {
    print("******* \n Engine stopped");
  }
}

class Car extends Vehicle {
  @override
  void startEngine() {
    super.startEngine();
    print("******* \n Car engine started");
  }
}

class Motorcycle extends Vehicle {
  @override
  void startEngine() {
    super.startEngine();
    print(" ******* \nMotorcycle engine started");
  }

  @override
  void stopEngine() {
    super.stopEngine();
    print(" ******* \n Motorcycle Stop Engine");
  }
}

void performEngineStart(Vehicle vehicle) {
  vehicle.startEngine();
}

void performEngineStop(Vehicle vehicle) {
  vehicle.stopEngine();
}

void main() {
  Vehicle vehicle1 = Car();
  Vehicle vehicle2 = Motorcycle();

  performEngineStart(vehicle1);

  performEngineStop(vehicle2);
}
