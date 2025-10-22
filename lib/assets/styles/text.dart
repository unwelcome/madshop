import 'package:flutter/material.dart';
import 'package:madshop_ui_zharov/assets/styles/colors.dart';

class AppTextStyles {
  // Заголовок 
  static const TextStyle titleUltraLarge = TextStyle(
    fontSize: 52,
    fontWeight: FontWeight.w700,
    color: AppColor.textMain,
  );
  static const TextStyle titleLarge = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: AppColor.textMain,
  );
  static const TextStyle titleMedium = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColor.textMain,
  );

  // Основной текст
  static const TextStyle body = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColor.textMain,
    height: 1.4,
  );

  // Описания, подписи
  static const TextStyle description = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColor.textMain,
  );

  // Инпуты
  static const TextStyle input = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColor.textMain,
  );

  // Плейсхолдеры
  static const TextStyle placeholder = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColor.textPlaceholder,
  );

  // Кнопки
  static const TextStyle buttonLarge = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColor.textButton,
  );

  // Ссылки
  static const TextStyle link = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColor.textMain,
    height: 1.4,
    decoration: TextDecoration.underline,
  );
}