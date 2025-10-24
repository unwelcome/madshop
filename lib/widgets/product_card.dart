import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:madshop_ui_zharov/assets/styles/text.dart';
import '../models/product_model.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      shadowColor: Colors.transparent,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusGeometry.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(color: const Color.fromARGB(255, 211, 211, 211), blurRadius: 5, spreadRadius: 0.5)
                ],
              ),
              child: Stack(
                children: [
                  // Изображение товара
                  Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      image: DecorationImage(
                        image: AssetImage(product.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Иконка избранного
                  Positioned(
                    top: 0,
                    left: 0,
                    child: IconButton(
                      icon: SvgPicture.asset(
                        'lib/assets/icons/icon_favorite.svg',
                        colorFilter: product.isLiked ? ColorFilter.mode(Colors.redAccent, BlendMode.srcIn) : null,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  // Иконка корзины
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: IconButton(
                      icon: SvgPicture.asset(
                        'lib/assets/icons/icon_cart.svg',
                        colorFilter: product.isInCart ? ColorFilter.mode(Colors.black, BlendMode.srcIn) : null,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(6),
              child: Column(
                spacing: 8,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    style: AppTextStyles.titleTiny,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '\$${product.price.toStringAsFixed(2)}',
                    style: AppTextStyles.price,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}