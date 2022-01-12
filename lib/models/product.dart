class Product {
  final String name, price, image, topShot;
  final List<String> features;
  final List<Map<String, dynamic>> productSpecification;

  Product({
    required this.name,
    required this.price,
    required this.image,
    required this.topShot,
    required this.features,
    required this.productSpecification,
  });
}
