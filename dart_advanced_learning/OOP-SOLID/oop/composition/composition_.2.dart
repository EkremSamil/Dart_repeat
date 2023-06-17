class Address {
  String street;
  String city;
  String country;

  Address(this.street, this.city, this.country);
}

class Person {
  String name;
  int age;
  Address address;

  Person(this.name, this.age, this.address);

  void displayInfo() {
    print("Name: $name");
    print("Age: $age");
    print("Address: ${address.street}, ${address.city}, ${address.country}");
  }
}

void main() {
  Address address = Address("123 Main Street", "New York", "USA");
  Person person = Person("John Doe", 25, address);
  person.displayInfo();
}
