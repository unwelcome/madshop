import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:madshop_ui_zharov/assets/styles/text.dart';
import 'package:madshop_ui_zharov/pages/home_page.dart';
import 'package:madshop_ui_zharov/pages/login_page.dart';
import 'package:madshop_ui_zharov/widgets/button.dart';
import 'package:madshop_ui_zharov/widgets/input.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({super.key});

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  void _navigateTo(String path) {
    final newPage = path == "/login" ? LoginPage() : HomePage();

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
              left: -40,
              top: -120, 
              child: SvgPicture.asset(
                'lib/assets/images/password_clouds/cloud_2.svg',
                width: 370,
                height: 440,
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              child: SvgPicture.asset(
                'lib/assets/images/password_clouds/cloud_1.svg',
                width: 245,
                height: 272,
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
                    Column(
                      children: [
                        Text("Hello!", style: AppTextStyles.titleLarge),
                        Text("Type your password", style: AppTextStyles.titleMedium),
                      ]
                    ),
                    SizedBox(height: (isKeyboardOpen ? 10 : 170)),
                    InputField(hintText: "Password", onChanged: (_) {}),
                    SizedBox(height: 10),
                    CustomButton(
                      text: Text("Start", style: AppTextStyles.buttonLarge),
                      onPressed: () => _navigateTo("/home"),
                      isFullWidth: true,
                    ),
                    TextButton(
                      onPressed: () => _navigateTo("/login"),
                      child: Text("Back", style: AppTextStyles.link)
                    )
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