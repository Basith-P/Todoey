import 'package:flutter/material.dart';

import 'colors.dart';

class CustomTheme {
  static ThemeData get lightTheme => ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: primaryLight,
      );
}
