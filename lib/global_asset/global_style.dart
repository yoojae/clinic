import 'package:flutter/material.dart';

// Global Variable
class GlobalStyle {
  // 색상 글로벌
  static const Color bg = Color(0xFFEFF7F8);
  static const Color green = Color(0xFF099EAE);
  static const Color light_green = Color(0xFFCEEBEE);
  static const Color white = Color(0xFFFFFFFF);
  static const Color yellow = Color(0xFFFBCD5E);
  static const Color gray = Color(0xFFA09E9E);
  static const Color light_gray = Color(0xFFD6D8D5);
  static const Color lighter_gray = Color(0xFFEEF1F7);
  static const Color light_yellow = Color(0xFFFFFBE5);
  static const Color light_blue = Color(0xFF15D4FE);
  static const Color red = Color(0xFFDE504C);
  static const Color dark = Color(0xFF3F414D);
  static const Color light_dark = Color(0xFF777D74);
  }


var shadow = [BoxShadow(
  color: GlobalStyle.gray.withOpacity(0.1),
  blurRadius: 5.0,
  spreadRadius: 0.0,
  offset: Offset(2,3),
)];

