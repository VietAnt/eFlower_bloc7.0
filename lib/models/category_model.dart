//Category_Model
import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({
    required this.name,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [name, imageUrl];

  //*List: Categories
  static List<Category> categories = [
    Category(
      name: 'Flower',
      imageUrl:
          'https://assets.flowerstore.ph/public/tenantVN/app/assets/images/product/350_96NcUxsbKxGlwYc3Cm19K1aW7.jpg',
    ),
    Category(
      name: 'The Blue Flower',
      imageUrl:
          'https://assets.flowerstore.ph/public/tenantVN/app/assets/images/product/350_gO35Rzwuwfl2OwZpBbefqwUeo.jpg',
    ),
    Category(
      name: 'Forever 18',
      imageUrl:
          'https://assets.flowerstore.ph/public/tenantVN/app/assets/images/product/350_Sp4Ke6mMZ6LuF0bMFSTHtZcMi.jpg',
    ),
    Category(
      name: 'Fly The Moon',
      imageUrl:
          'https://assets.flowerstore.ph/public/tenantVN/app/assets/images/product/350_Z4oZrBsaTyzpSJa6qUR3tFz0l.jpg',
    ),
  ];
}
