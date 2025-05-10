import 'package:flutter/material.dart';

class ThemeConstant {
  static const Color disableColor = Color(0xFFB9B3B3);
  static const success = Color(0xFF3DAF35);

  static const ColorScheme lightScheme = ColorScheme(
    primary: Color(0xFF006E2F),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFF71FE93),
    onPrimaryContainer: Color(0xFF002109),
    secondary: Color(0xFF00B050),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFF97F0FF),
    onSecondaryContainer: Color(0xFF001F24),
    tertiary: Color(0xFF43D485),
    onTertiary: Color(0xFFFFFFFF),
    surface: Color(0xFFFFFFFF),
    onSurface: Color(0xFF170103),
    error: Color(0xFFFE2A43),
    onError: Color(0xFFFFFFFF),
    errorContainer: Color(0xFFFFDAD6),
    onErrorContainer: Color(0xFF410002),
    outline: Color(0xFF727970),
    shadow: Color(0xFF000000),
    brightness: Brightness.light,
    inversePrimary: Color(0xFFF2FBF6),
    inverseSurface: Color(0xFFDADADA),
    onInverseSurface: Color(0xFFF85E5E), 
  );



  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: lightScheme.surface,
    primaryColor: lightScheme.surface,
    textTheme: textTheme(),
    splashColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: lightScheme.inversePrimary,
      elevation: 0.0,
      foregroundColor: lightScheme.onSurface,
      iconTheme: IconThemeData(color: lightScheme.onSurface),
      titleTextStyle: textTheme().headlineSmall?.copyWith(color: lightScheme.onSurface, fontWeight: FontWeight.bold),
    ),
    colorScheme: lightScheme.copyWith(surface: lightScheme.surface),
  );




  static TextTheme textTheme({List<String>? fonts}) {
    List<String> fontFamily = fonts ?? ["Montserrat", "Nokora"];
    final Color color = lightScheme.onSurface;
    const Color displayColor = Color(0xFF8B8081);
    TextTheme textTheme = Typography.material2018().white;
    return textTheme
        .copyWith(
          /// h1 => fontSize: 98
          displayLarge: TextStyle(
            fontSize: 98,
            fontWeight: FontWeight.w300,
            letterSpacing: -1.5,
            fontFamilyFallback: fontFamily,
          ),

          /// h2 => fontSize: 61
          displayMedium: TextStyle(
            fontSize: 61,
            fontWeight: FontWeight.w300,
            letterSpacing: -0.5,
            fontFamilyFallback: fontFamily,
          ),

          /// h3 => fontSize: 49
          displaySmall: TextStyle(
            fontSize: 49,
            fontWeight: FontWeight.w400,
            fontFamilyFallback: fontFamily,
          ),

          /// h4 => fontSize: 35
          headlineMedium: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.25,
            fontFamilyFallback: fontFamily,
          ),

          /// h5 => fontSize: 24
          headlineSmall: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
            fontFamilyFallback: fontFamily,
          ),

          /// h6 => fontSize: 20
          titleLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.15,
            fontFamilyFallback: fontFamily,
          ),

          /// s1 => fontSize: 16
          titleMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.15,
            fontFamilyFallback: fontFamily,
          ),

          /// s2 => fontSize: 14
          titleSmall: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.1,
            fontFamilyFallback: fontFamily,
          ),

          /// b1 => fontSize: 16
          bodyLarge: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.5,
            fontFamilyFallback: fontFamily,
          ),

          /// b2 => fontSize: 14
          bodyMedium: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.25,
            fontFamilyFallback: fontFamily,
          ),

          /// button => fontSize: 14
          labelLarge: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.25,
            fontFamilyFallback: fontFamily,
          ),

          /// c => fontSize: 12
          bodySmall: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.4,
            fontFamilyFallback: fontFamily,
          ),

          /// o => fontSize: 10
          labelSmall: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.4,
            fontFamilyFallback: fontFamily,
          ),
        )
        .apply(
          bodyColor: color,
          displayColor: displayColor,
        );
  }
}
