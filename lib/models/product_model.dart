class Product {
  final String id;
  String title;
  String imageSrc;
  double price;
  bool isLiked = false;
  bool isInCart = false;

  Product({required this.id, required this.title, required this.imageSrc, required this.price});
}