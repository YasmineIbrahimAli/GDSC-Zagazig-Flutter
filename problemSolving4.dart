abstract class Shape {
  double calculateArea();
  double calculatePerimeter();
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }

  @override
  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }

  @override
  double calculatePerimeter() {
    return 2 * 3.14 * radius;
  }
}

class Triangle extends Shape {
  double base;
  double height;
  double side1;
  double side2;
  double side3;

  Triangle(this.base, this.height, this.side1, this.side2, this.side3);

  @override
  double calculateArea() {
    return 0.5 * base * height;
  }

  @override
  double calculatePerimeter() {
    return side1 + side2 + side3;
  }
}

void main() {
  Shape rectangle = Rectangle(5, 3);
  print('Rectangle Area: ${rectangle.calculateArea()}');
  print('Rectangle Perimeter: ${rectangle.calculatePerimeter()}');

  Shape circle = Circle(4);
  print('Circle Area: ${circle.calculateArea()}');
  print('Circle Perimeter: ${circle.calculatePerimeter()}');

  Shape triangle = Triangle(5, 4, 3, 4, 5);
  print('Triangle Area: ${triangle.calculateArea()}');
  print('Triangle Perimeter: ${triangle.calculatePerimeter()}');
}