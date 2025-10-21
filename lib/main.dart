import 'package:flutter/material.dart';
import 'package:madshop_ui_zharov/pages/login_page.dart';
import 'package:provider/provider.dart';

// pages
import 'package:madshop_ui_zharov/pages/init_app_page.dart';

// models
import 'package:madshop_ui_zharov/models/cart_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      child: MaterialApp(
        title: 'MadShop',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Roboto',
        ),
        home: InitAppPage(),
        routes: {
          '/login': (context) => LoginPage(),
          // '/home': (context) => HomePage(),
          // '/cart': (context) => CartPage(),
          // '/favorites': (context) => FavoritesPage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}