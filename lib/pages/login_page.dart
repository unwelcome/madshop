import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:madshop_ui_zharov/assets/styles/text.dart';
import 'package:madshop_ui_zharov/pages/password_page.dart';
import 'package:madshop_ui_zharov/pages/signup_page.dart';
import 'package:madshop_ui_zharov/widgets/button.dart';
import 'package:madshop_ui_zharov/widgets/input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void _navigateTo(String path) {
    final newPage = path == "/signup" ? SignUpPage() : PasswordPage();

    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => newPage,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
        transitionDuration: Duration(milliseconds: 300),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            Positioned(
              left: -40,
              top: -120, 
              child: SvgPicture.asset(
                'lib/assets/images/login_clouds/cloud_2.svg',
                width: 370,
                height: 440,
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              child: SvgPicture.asset(
                'lib/assets/images/login_clouds/cloud_1.svg',
                width: 245,
                height: 272,
              ),
            ),
            Positioned(
              right: 0,
              top: 300,
              child: SvgPicture.asset(
                'lib/assets/images/login_clouds/cloud_3.svg',
                width: 130,
                height: 150,
              ),
            ),
            Positioned(
              right: -80,
              bottom: -150,
              child: SvgPicture.asset(
                'lib/assets/images/login_clouds/cloud_4.svg',
                width: 370,
                height: 440,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter, // Прижимаем к низу по центру
              child: Padding(
                padding: EdgeInsets.only(bottom: 20, left: 40, right: 40), // Отступ снизу
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  spacing: 20,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Login", style: AppTextStyles.titleUltraLarge),
                          Row(spacing: 4, children: [Text("Good to see you back!", style: AppTextStyles.titleMedium), Icon(Icons.favorite)]),
                        ]
                      ),
                    ),
                    SizedBox(height: 10),
                    InputField(hintText: "Email", onChanged: (_) {}),
                    SizedBox(height: 10),
                    CustomButton(
                      text: Text("Login", style: AppTextStyles.buttonLarge),
                      onPressed: () => _navigateTo("/password"),
                      isFullWidth: true,
                    ),
                    Row(
                      spacing: 4,
                      children: [
                        Text("Don't have an account?"), 
                        TextButton(
                          onPressed: () => _navigateTo("/signup"),
                          child: Text("Sign up now", style: AppTextStyles.link)
                        )
                      ], 
                      ),
                  ],
                )
              ),
            ),
          ],
        )
      )
    );
  }
}