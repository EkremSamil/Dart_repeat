class Person {
  String? name;
  int? age;

  void sayHello() {
    print("Merhaba, Ben $name. $age yaşındayım.");
  }
}

void main() {
  Person person1 = Person();
  person1.name = "Ahmet";
  person1.age = 25;
  person1.sayHello();

  Person person2 = Person();
  person2.name = "Ayşe";
  person2.age = 30;
  person2.sayHello();
}
