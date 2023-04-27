import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isRecommended,
    required this.isPopular,
  });

  @override
  List<Object?> get props => [
        name,
        category,
        imageUrl,
        price,
        isRecommended,
        isPopular,
      ];

  //*List products
  static List<Product> products = [
    Product(
      name: 'Flower 01',
      category: 'Flower',
      imageUrl:
          'https://assets.flowerstore.ph/public/tenantVN/app/assets/images/product/350_96NcUxsbKxGlwYc3Cm19K1aW7.jpg',
      price: 29.9,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Flower 02',
      category: 'Flower',
      price: 56.9,
      imageUrl:
          'https://assets.flowerstore.ph/public/tenantVN/app/assets/images/product/350_Z4oZrBsaTyzpSJa6qUR3tFz0l.jpg',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Flower 03',
      category: 'Fly The Moon',
      imageUrl:
          'https://assets.flowerstore.ph/public/tenantVN/app/assets/images/product/350_gO35Rzwuwfl2OwZpBbefqwUeo.jpg',
      price: 79.9,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Flower The Moon',
      category: 'Fly The Moon',
      imageUrl:
          'https://assets.flowerstore.ph/public/tenantVN/app/assets/images/product/250_BnjhFXEtjy4tu6aN46rgkfEL3.jpg',
      price: 58.9,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Blue Flower',
      category: 'The Blue Flower',
      imageUrl:
          'https://assets.flowerstore.ph/public/tenantVN/app/assets/images/product/350_gO35Rzwuwfl2OwZpBbefqwUeo.jpg',
      price: 79.9,
      isRecommended: true,
      isPopular: false,
    ),
  ];
}
