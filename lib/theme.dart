import 'package:flutter/material.dart';

class MyTheme {
  static final ThemeData defaultTheme = _buildMyTheme();

  static ThemeData _buildMyTheme() {
    final ThemeData base = ThemeData.light();

    return base.copyWith(
      primaryColor: SanFranciscoClouded.tealGreen,
      primaryColorDark: SanFranciscoClouded.mistyBlue,
      primaryColorLight: SanFranciscoClouded.coral,
      buttonTheme: base.buttonTheme.copyWith(
        buttonColor: SanFranciscoClouded.coral,
        textTheme: ButtonTextTheme.primary,
      ),
      scaffoldBackgroundColor: SanFranciscoClouded.mistyBlue,
      backgroundColor: SanFranciscoClouded.ivory,
    );
  }
}

class SanFranciscoClouded {
  const SanFranciscoClouded();

  static const Color tealGreen = Color(0xFF4297A0);
  static const Color ivory = Color(0xFFF4EAE6);
  static const Color coral = Color(0xFFE57F84);
  static const Color mistyBlue = Color(0xFF2F5061);
}

class ColorPattern {
  ColorPattern(this.primary, this.secondary, this.tertiary, this.primaryDark);

  Color primary = SanFranciscoClouded.tealGreen;
  Color secondary = SanFranciscoClouded.ivory;
  Color tertiary = SanFranciscoClouded.coral;
  Color primaryDark = SanFranciscoClouded.mistyBlue;
}

var landOfChivalryTheme = ColorPattern(
  const Color(0xFF90ADC6),
  const Color(0xFFE9EAEC),
  const Color(0xFFFAD02C),
  const Color(0xFF333652),
);

var swampsOfShronkTheme = ColorPattern(
  const Color(0xFF719F1E),
  const Color(0xFFD5CE58),
  const Color(0xFF4A7212),
  const Color(0xFF104210),
);

var hallOfHymnsTheme = ColorPattern(
  const Color(0xFF871746),
  const Color(0xFF495C7C),
  const Color(0xFFCB9A9F),
  const Color(0xFF3A3A3F),
);
