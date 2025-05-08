import 'package:flutter/material.dart';
import 'package:our_pharmacy_learning_management_system/login/login_form.dart';
import 'package:our_pharmacy_learning_management_system/login/splash_screen.dart';

void main() {
  runApp(const MyApp());
}


 class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context)=> SplashScreen(),
        '/login_form': (context)=> LoginForm(),
      },
    );
  }
}

