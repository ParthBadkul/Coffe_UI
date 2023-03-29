class Coffee {
  String name;
  double price;
  String imageUrl;

  Coffee({required this.name, required this.price, required this.imageUrl});
}

List<Coffee> coffees = [
  Coffee(name: 'Long Black', price: 4.10, imageUrl: 'imageUrl'),
  Coffee(name: 'Latte', price: 4.00, imageUrl: 'imageUrl'),
  Coffee(name: 'Espresso', price: 4.40, imageUrl: 'imageUrl'),
  Coffee(name: 'Iced Coffe', price: 4.10, imageUrl: 'imageUrl'),
  Coffee(name: 'Long Black', price: 4.10, imageUrl: 'imageUrl'),
];
