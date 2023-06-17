abstract class Shape {
  double calculateArea();
}

class Rectangle implements Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }
}

class Circle implements Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

void printArea(Shape shape) {
  double area = shape.calculateArea();
  print('Area: $area');
}

void main() {
  Shape rectangle = Rectangle(5, 3);
  Shape circle = Circle(2);

  printArea(rectangle);
  printArea(circle);
}
