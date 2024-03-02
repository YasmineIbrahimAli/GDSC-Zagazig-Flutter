import 'dart:io';

class Laptop {
  String brand;
  String model;
  int ram;

  Laptop(this.brand, this.model, this.ram);

  double calculatePrice() {
    double basePrice;
    if (brand == 'Apple') {
      basePrice = 2000;
    } else if (brand == 'Dell') {
      basePrice = 1500;
    } else if (brand == 'HP') {
      basePrice = 1200;
    } else {
      basePrice = 1000;
    }

    if (ram >= 16) {
      return basePrice + 300;
    } else {
      return basePrice;
    }
  }
}

void main() {
  print("Enter laptop brand:");
  String brand = stdin.readLineSync()!;

  print("Enter laptop model:");
  String model = stdin.readLineSync()!;

  print("Enter laptop RAM:");
  int ram = int.parse(stdin.readLineSync()!);

  Laptop laptop = Laptop(brand, model, ram);
  double price = laptop.calculatePrice();

  print("The price of the laptop is: \$${price.toStringAsFixed(2)}");
}