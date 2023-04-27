import 'package:equatable/equatable.dart';
import 'package:fibase_ecommerce/models/models.dart';

class Cart extends Equatable {
  final List<Product> products;
  const Cart({this.products = const <Product>[]});

  @override
  List<Object> get props => [products];

  //*Map
  Map productQuantity(products) {
    var quantity = Map();

    products.forEach((product) {
      if (!quantity.containsKey(product)) {
        quantity[product] = 1;
      } else {
        quantity[product] += 1;
      }
    });
    return quantity;
  }

  //*Subtotal:Tong_Gia
  double get subtotal =>
      products.fold(0, (total, current) => total + current.price);

  //*DeliveryFree
  double deliveryFree(subtotal) {
    if (subtotal >= 30.0) {
      return 0.0;
    } else {
      return 10.0;
    }
  }

  //*total
  double total(subtotal, deliveryFree) {
    return subtotal + deliveryFree(subtotal);
  }

  String freeDelivery(subtotal) {
    if (subtotal >= 30) {
      return 'You have Free Delivery';
    } else {
      double missing = 30.0 - subtotal;

      return 'Add \$${missing.toStringAsFixed(2)} for FREE Delivery';
    }
  }

  String get subtotalString => subtotal.toStringAsFixed(2);

  String get totalString => total(subtotal, deliveryFree).toStringAsFixed(2);

  String get deliveryFeeString => deliveryFree(subtotal).toStringAsFixed(2);

  String get freeDeliveryString => freeDelivery(subtotal);

  // //*List products
  // static List<Product> products = [
  //   Product(
  //     name: 'Flower 01',
  //     category: 'Flower',
  //     imageUrl:
  //         'https://assets.flowerstore.ph/public/tenantVN/app/assets/images/product/350_96NcUxsbKxGlwYc3Cm19K1aW7.jpg',
  //     price: 29.9,
  //     isRecommended: true,
  //     isPopular: false,
  //   ),
  //   Product(
  //     name: 'Flower 02',
  //     category: 'Flower',
  //     price: 56.9,
  //     imageUrl:
  //         'https://assets.flowerstore.ph/public/tenantVN/app/assets/images/product/350_Z4oZrBsaTyzpSJa6qUR3tFz0l.jpg',
  //     isRecommended: true,
  //     isPopular: true,
  //   ),
  //   Product(
  //     name: 'Flower 03',
  //     category: 'Fly The Moon',
  //     imageUrl:
  //         'https://assets.flowerstore.ph/public/tenantVN/app/assets/images/product/350_gO35Rzwuwfl2OwZpBbefqwUeo.jpg',
  //     price: 79.9,
  //     isRecommended: true,
  //     isPopular: false,
  //   ),
  //   Product(
  //     name: 'Flower The Moon',
  //     category: 'Fly The Moon',
  //     imageUrl:
  //         'https://assets.flowerstore.ph/public/tenantVN/app/assets/images/product/250_BnjhFXEtjy4tu6aN46rgkfEL3.jpg',
  //     price: 58.9,
  //     isRecommended: true,
  //     isPopular: false,
  //   ),
  //   Product(
  //     name: 'Blue Flower',
  //     category: 'The Blue Flower',
  //     imageUrl:
  //         'https://assets.flowerstore.ph/public/tenantVN/app/assets/images/product/350_gO35Rzwuwfl2OwZpBbefqwUeo.jpg',
  //     price: 79.9,
  //     isRecommended: true,
  //     isPopular: false,
  //   ),
  // ];
}
