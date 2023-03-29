class Coffee {
  String name;
  double price;
  String imageUrl;

  Coffee({required this.name, required this.price, required this.imageUrl});
}

List<Coffee> coffees = [
  Coffee(
      name: 'Long Black',
      price: 4.10,
      imageUrl: 'assets/images/black_coffee.png'),
  Coffee(name: 'Latte', price: 4.00, imageUrl: 'assets/images/latte.png'),
  Coffee(
      name: 'Espresso', price: 4.40, imageUrl: 'assets/images/espresso.jpeg'),
  Coffee(
      name: 'Iced Coffe',
      price: 4.10,
      imageUrl: 'assets/images/icedcoffee.png'),
  Coffee(
      name: 'Long Black',
      price: 4.10,
      imageUrl: 'assets/images/black_coffee.png'),
];
