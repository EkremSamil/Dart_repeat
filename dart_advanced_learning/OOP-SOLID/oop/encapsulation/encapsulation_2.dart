class Employee {
  late String _name;
  late int _age;
  late double _salary;

  Employee(String name, int age, double salary) {
    _name = name;
    _age = age;
    _salary = salary;
  }

  String get name => _name;

  int get age => _age;

  double get salary => _salary;

  void increaseSalary(double percentage) {
    if (percentage > 0) {
      double increaseAmount = _salary * percentage / 100;
      _salary += increaseAmount;
      print('Maaş artışı yapıldı. Yeni maaş: $_salary');
    }
  }
}

void main() {
  Employee employee = Employee('John Doe', 30, 5000.0);
  print('İsim: ${employee.name}');
  print('Yaş: ${employee.age}');
  print('Maaş: ${employee.salary}');

  employee.increaseSalary(10.0);
}
