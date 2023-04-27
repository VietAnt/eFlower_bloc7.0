import 'package:fibase_ecommerce/models/category_model.dart';
import 'package:fibase_ecommerce/models/product_model.dart';
import 'package:fibase_ecommerce/screens/screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('This is route: ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      //HomeScren
      case HomeScreen.routeName:
        return HomeScreen.route();
      //SplashScreen
      case SplashScreen.routeName:
        return SplashScreen.route();
      //CartScreen
      case CartScreen.routeName:
        return CartScreen.route();
      //Product
      case ProductScreen.routeName:
        return ProductScreen.route(product: settings.arguments as Product);
      //Favorite
      case FavoriteScreen.routeName:
        return FavoriteScreen.route();
      //Catalog
      case CatalogScreen.routeName:
        return CatalogScreen.route(category: settings.arguments as Category);
      //Default
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
      ),
    );
  }
}
