import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// colors
import 'package:madshop_ui_zharov/assets/styles/colors.dart';
// pages
import 'package:madshop_ui_zharov/pages/login_page.dart';

class InitAppPage extends StatefulWidget {
  const InitAppPage({super.key});

  @override
  State<InitAppPage> createState() => _InitAppPageState();
}

class _InitAppPageState extends State<InitAppPage> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() {
    Future.delayed(Duration(milliseconds: 1500), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => LoginPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
          transitionDuration: Duration(milliseconds: 500),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bg0,
      body: Center(
        child: Container(
          width: 330,
          height: 330,
          decoration: BoxDecoration(
            color: AppColor.bg0,
            shape: BoxShape.circle,
             boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 216, 216, 216),
                blurRadius: 3,
                spreadRadius: 2,
                offset: Offset(0, 4),
              ),
            ]
          ),
          child: Center(
            child: SvgPicture.asset(
              'lib/assets/icons/icon_logo.svg',
              width: 200,
              height: 226,
            ),
          ),
        ),
      )
    );
  }
}