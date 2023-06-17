class Vehicle {
  String? brand;

  Vehicle(this.brand);

  void honk() {
    print("Vehicle kornası çalınıyor!");
  }
}

class Car extends Vehicle {
  String model;

  Car(String brand, this.model) : super(brand);

  void carModel() {
    print("$brand $model");

    super.honk();
    print("$model kornası çalınıyor!");
  }
}

void main() {
  Car toyoto = Car("brand", "model");
  toyoto.carModel();
}
