import 'package:flutter/material.dart';

// pages
import 'package:madshop_ui_zharov/pages/home_page.dart';
import 'package:madshop_ui_zharov/pages/login_page.dart';
import 'package:madshop_ui_zharov/pages/signup_page.dart';
import 'package:madshop_ui_zharov/pages/init_app_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'MadShop',
      theme: ThemeData(
        fontFamily: 'Raleway',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: InitAppPage(),
      routes: {
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
        // '/cart': (context) => CartPage(),
        // '/favorites': (context) => FavoritesPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}