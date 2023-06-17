class Person {
  String name;

  Person(this.name);
}

void main() {
  Person person1 = Person("John Doe");
  print(person1.name);

  Person person2 = person1;
  print(person2.name);

  person1.name = "Jane Smith";

  print(person1.name);
  print(person2.name);
}
