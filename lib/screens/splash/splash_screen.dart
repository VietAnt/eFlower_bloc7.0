import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/splash';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => SplashScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushNamed(context, '/'),
    );
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              'Flower 20+',
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 25),
            ),
          ),
          const Center(
            child: Image(
              image: AssetImage('assets/images/logo.png'),
              width: 250,
              height: 250,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            child: Text(
              'eCommerce Flower',
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}
