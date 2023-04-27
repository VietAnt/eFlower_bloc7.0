import 'package:fibase_ecommerce/models/models.dart';
import 'package:fibase_ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ProductRecommed extends StatelessWidget {
  List<Product> products;
  ProductRecommed({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: SizedBox(
        height: 240,
        child: ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: ProductCard(product: products[index]),
            );
          },
        ),
      ),
    );
  }
}
