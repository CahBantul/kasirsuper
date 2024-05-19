import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';

class LigthTheme {
  final Color primaryColor;
  LigthTheme(this.primaryColor);

  final Color errorColor = AppColor.red;
  final Color scafoldColor = AppColor.white;
  final Color textSolidColor = AppColor.black;
  final Color borderColor = AppColor.white[500]!;
  final Color disableColor = AppColor.black[200]!;

  TextTheme get textTheme => TextTheme(
        headlineLarge: TextStyle(
          fontSize: Dimens.dp32,
          fontWeight: FontWeight.bold,
          color: textSolidColor,
        ),
        headlineMedium: TextStyle(
          fontSize: Dimens.dp24,
          fontWeight: FontWeight.w600,
          color: textSolidColor,
        ),
        headlineSmall: TextStyle(
          fontSize: Dimens.dp20,
          fontWeight: FontWeight.w600,
          color: textSolidColor,
        ),
        titleLarge: TextStyle(
          fontSize: Dimens.dp16,
          fontWeight: FontWeight.w600,
          color: textSolidColor,
        ),
        titleMedium: TextStyle(
          fontSize: Dimens.dp14,
          fontWeight: FontWeight.w600,
          color: textSolidColor,
        ),
        bodyLarge: TextStyle(
          fontSize: Dimens.dp16,
          fontWeight: FontWeight.w500,
          color: textSolidColor,
        ),
        bodyMedium: TextStyle(
          fontSize: Dimens.dp14,
          fontWeight: FontWeight.normal,
          color: textSolidColor,
        ),
        labelMedium: TextStyle(
          fontSize: Dimens.dp12,
          fontWeight: FontWeight.w600,
          color: textSolidColor,
        ),
      );

  CardTheme get cardTheme => CardTheme(
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.dp8),
          side: BorderSide(color: borderColor)));

  AppBarTheme get appBarTheme => const AppBarTheme();

  BottomNavigationBarThemeData get bottomNavigationBarThemeData =>
      BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: primaryColor,
          unselectedItemColor: disableColor);
  
  ElevatedButtonThemeData get elevatedButtonTheme {
    return ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Dimens.dp8),
            ),
            backgroundColor: primaryColor,
            foregroundColor: scafoldColor,
            textStyle: textTheme.titleMedium),
      );
  }

  OutlinedButtonThemeData get outlinedButtonTheme {
    return OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Dimens.dp8),
            ),
            backgroundColor: primaryColor,
            foregroundColor: scafoldColor,
            textStyle: textTheme.titleMedium),
      );
  }

  ThemeData get theme {
    return ThemeData(
      colorScheme: ColorScheme.light(
          primary: primaryColor, secondary: primaryColor, error: errorColor),
      scaffoldBackgroundColor: scafoldColor,
      useMaterial3: true,
      fontFamily: 'Poppins',
      textTheme: textTheme,
      appBarTheme: appBarTheme,
      cardTheme: cardTheme,
      bottomNavigationBarTheme: bottomNavigationBarThemeData,
      elevatedButtonTheme: elevatedButtonTheme,
      outlinedButtonTheme: outlinedButtonTheme, 
    );
  }
}
