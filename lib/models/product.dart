class Product {
  final String name, price, image, topShot;
  final List<String> features;
  final List<Map<String, dynamic>> productSpecification;

  Product({
    this.name = " ",
    this.price = " ",
    this.image = " ",
    this.topShot = " ",
    this.features = const [],
    this.productSpecification = const [],
  });
}
