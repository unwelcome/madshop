import 'package:madshop_ui_zharov/models/product_model.dart';

class Favorites {
  final List<Product> _favorites = [];

  Favorites();

  void addItem(Product product) {
    _favorites.add(product);

    product.isLiked = true;
  }

  void removeItem(String productID) {
    final List<Product> itemToRemove = _favorites.where((item) => item.id == productID).toList();

    if (itemToRemove.isEmpty) return; 

    _favorites.removeWhere((item) => item.id == productID);

    itemToRemove[0].isLiked = false;
  }

  List<Product> getFavorites() => List<Product>.from(_favorites);
  int getFavoritesLength() => _favorites.length;
}