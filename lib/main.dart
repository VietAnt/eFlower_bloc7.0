import 'package:fibase_ecommerce/Blocs/favorite/favorite_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Blocs/cart/cart_bloc.dart';
import 'config/app_router.dart';
import 'config/theme.dart';
import 'screens/screen.dart';

// void main() {
//   //Bloc.observer = SimpleBlocObserver();
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create: (_) => FavoriteBloc()..add(StartFavorite()),
//         ),
//         BlocProvider(
//           create: (_) => CartBloc()..add(CartStarted()),
//         ),
//       ],
//       child: MaterialApp(
//         title: 'Zero to Hero',
//         theme: theme(),
//         debugShowCheckedModeBanner: false,
//         onGenerateRoute: AppRouter.onGenerateRoute,
//         initialRoute: SplashScreen.routeName,
//         //home: HomeScreen(),
//       ),
//     );
//   }
// }
