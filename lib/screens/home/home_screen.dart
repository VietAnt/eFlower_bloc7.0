import 'package:carousel_slider/carousel_slider.dart';
import 'package:fibase_ecommerce/models/models.dart';
import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: 'eCommerce Flower'),
      bottomNavigationBar: NavBarCustom(),
      body: ListView(
        children: [
          Column(
            children: [
              //*------------*//
              Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 2.0,
                    viewportFraction: 0.9,
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                  ),
                  items: Category.categories
                      .map((category) => SliderBarCard(category: category))
                      .toList(),
                ),
              ),
              //*-->Section
              const SectionTitle(title: 'Recommend'),
              //*-->ProductRecommed
              ProductRecommed(
                products: Product.products
                    .where((product) => product.isRecommended)
                    .toList(),
              ),
              //*-->IsPopular
              const SectionTitle(title: 'Popular'),
              //*-->ProductPopular
              ProductRecommed(
                products: Product.products
                    .where((product) => product.isPopular)
                    .toList(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
