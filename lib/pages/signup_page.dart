import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:madshop_ui_zharov/assets/styles/text.dart';
import 'package:madshop_ui_zharov/pages/home_page.dart';
import 'package:madshop_ui_zharov/pages/login_page.dart';
import 'package:madshop_ui_zharov/widgets/button.dart';
import 'package:madshop_ui_zharov/widgets/input.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  void _navigateTo(String path) {
    final newPage = path == "/signup" ? SignUpPage() : HomePage();

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
    final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    final isKeyboardOpen = keyboardHeight > 0;

    return Scaffold(
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            Positioned(
              right: 0,
              top: 40, 
              child: SvgPicture.asset(
                'lib/assets/images/signup_clouds/cloud_1.svg',
                width: 240,
                height: 260,
              ),
            ),
            Positioned(
              left: -100,
              top: -100,
              child: SvgPicture.asset(
                'lib/assets/images/signup_clouds/cloud_2.svg',
                width: 310,
                height: 360,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter, // Прижимаем к низу по центру
              child: Padding(
                padding: EdgeInsets.only(bottom: (isKeyboardOpen ? 5 : 20), left: 40, right: 40), // Отступ снизу
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  spacing: (isKeyboardOpen ? 10 : 20),
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Text("Create\nAccount", style: AppTextStyles.titleUltraLarge), 
                    ),
                    SizedBox(height: (isKeyboardOpen ? 0 : 130)),
                    Column(
                      spacing: 12,
                      children: [
                        InputField(hintText: "Email", onChanged: (_) {}),
                        InputField(hintText: "Password", onChanged: (_) {}),
                        InputField(hintText: "Your number", onChanged: (_) {}),
                      ],
                    ),
                    CustomButton(
                      text: Text("Done", style: AppTextStyles.buttonLarge),
                      onPressed: () => _navigateTo("/home"),
                      isFullWidth: true,
                    ),
                    Row(
                      spacing: 4,
                      children: [
                        Text("Already have an account?"), 
                        TextButton(
                          onPressed: () => _navigateTo("/login"),
                          child: Text("Login now", style: AppTextStyles.link)
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