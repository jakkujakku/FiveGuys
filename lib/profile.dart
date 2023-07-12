import 'main.dart';
import 'profile1.dart';

class Product {
  String name;
  DateTime expirationDate;
  String ingredients;
  String origin;

  Product({
    required this.name,
    required this.expirationDate,
    required this.ingredients,
    required this.origin,
  });
}

void main() {
  List<Product> products = [
    Product(
      name: "조계성",
      expirationDate: DateTime(2023, 12, 31),
      ingredients: "INTJ",
      origin: "의정부산",
    ),
    Product(
      name: "테스트",
      expirationDate: DateTime(2024, 6, 30),
      ingredients: "ABCD",
      origin: "대한민국",
    ),
    Product(
      name: "테스트",
      expirationDate: DateTime(2024, 6, 30),
      ingredients: "ABCD",
      origin: "대한민국",
    ),
    Product(
      name: "테스트",
      expirationDate: DateTime(2024, 6, 30),
      ingredients: "ABCD",
      origin: "대한민국",
    ),
    Product(
      name: "테스트",
      expirationDate: DateTime(2024, 6, 30),
      ingredients: "ABCD",
      origin: "대한민국",
    ),
    // Add more products as needed
  ];

  // Accessing and printing values from the array
  // for (var product in products) {
  //   print("Name: ${product.name}");
  //   print("Expiration Date: ${product.expirationDate}");
  //   print("Ingredients: ${product.ingredients}");
  //   print("Origin: ${product.origin}");
  //   print("\n");
  // }
}
