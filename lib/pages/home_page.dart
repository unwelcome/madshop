import 'package:flutter/material.dart';

import 'package:madshop_ui_zharov/models/product_model.dart';

import 'package:madshop_ui_zharov/widgets/product_grid.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Product> products = [
    Product(
      id: '1',
      title: 'Lorem ipsum dolor sit amet consectetur',
      price: 17.00,
      imageUrl: 'lib/assets/images/products/1.png',
    ),
    Product(
      id: '2',
      title: 'Lorem ipsum dolor sit amet consectetur',
      price: 17.00,
      imageUrl: 'lib/assets/images/products/2.png',
    ),
    Product(
      id: '3',
      title: 'Lorem ipsum dolor sit amet consectetur',
      price: 17.00,
      imageUrl: 'lib/assets/images/products/3.png',
    ),
    Product(
      id: '4',
      title: 'Lorem ipsum dolor sit amet consectetur',
      price: 17.00,
      imageUrl: 'lib/assets/images/products/4.png',
      isLiked: true,
    ),
    Product(
      id: '5',
      title: 'Lorem ipsum dolor sit amet consectetur',
      price: 17.00,
      imageUrl: 'lib/assets/images/products/5.png',
    ),
    Product(
      id: '6',
      title: 'Lorem ipsum dolor sit amet consectetur',
      price: 17.00,
      imageUrl: 'lib/assets/images/products/6.png',
      isInCart: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: SafeArea(
        top: false,
        child: ProductsGrid(
          products: products,
        ),
      ),
    );
  }
}