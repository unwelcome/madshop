import 'package:madshop_ui_zharov/models/product_model.dart';
import 'package:flutter/foundation.dart';

class Cart extends ChangeNotifier {
  final List<CartItem> _cart = [];

  Cart();

  void addItem(Product product) {
    _cart.add(CartItem(product: product, count: 1));

    product.isInCart = true;

    notifyListeners();
  }

  void removeItem(String productID) {
    final List<CartItem> productToRemove = _cart.where((item) => item.product.id == productID).toList();

    if (productToRemove.isEmpty) return;

    _cart.removeWhere((item) => item.product.id == productID);

    productToRemove[0].product.isInCart = false;

    notifyListeners();
  }

  void setItemCount(String productID, int newCount) {
    final itemIndex = _cart.indexWhere((item) => item.product.id == productID);

    if (itemIndex == -1) return;

    if (newCount < 1) return removeItem(productID);

    _cart[itemIndex].count = newCount;

    notifyListeners();
  }

  List<CartItem> getCart() => List<CartItem>.from(_cart);

  int getCartLength() => _cart.length;

  double getCartTotalPrice() => _cart.fold(0.0, (total, item) => total + (item.product.price * item.count));
}

class CartItem {
  Product product;
  int count;

  CartItem({required this.product, required this.count});
}