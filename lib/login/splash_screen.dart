import 'dart:async';

import 'package:flutter/material.dart';
import 'package:our_pharmacy_learning_management_system/login/widgets/navbar_buttom.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}



class _SplashScreenState extends State<SplashScreen> {
 @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/login_form');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 80.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Image.asset("assets/images/pka_chan.png")],
            ),
            SizedBox(height: 30.0),
            Center(
              child: Image.asset(
                "assets/logos/op_logo.png",
                width: 220.0,
                height: 220.0,
              ),
            ),
            Spacer(),
            NavbarButtom(),
          ],
        ),
      ),
    );
  }
}
