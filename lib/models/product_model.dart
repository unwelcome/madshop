class Product {
  final String id;
  String title;
  String imageUrl;
  double price;
  bool isLiked = false;
  bool isInCart = false;

  Product({required this.id, required this.title, required this.imageUrl, required this.price, this.isLiked = false, this.isInCart = false});
}