import 'package:flutter/material.dart';
import 'package:madshop_ui_zharov/assets/styles/text.dart';
import 'package:madshop_ui_zharov/widgets/button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.bottomCenter, // Прижимаем к низу по центру
        child: Padding(
          padding: EdgeInsets.only(bottom: 60, left: 40, right: 40), // Отступ снизу
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Login", style: AppTextStyles.titleUltraLarge),
                    Text("Good to see you back!", style: AppTextStyles.titleMedium),
                  ]
                ),
              ),
              CustomButton(
                text: Text("Login", style: AppTextStyles.buttonLarge),
                onPressed: () {},
                isFullWidth: true,
              ),
            ],
          )
        ),
      ),
    );
  }
}