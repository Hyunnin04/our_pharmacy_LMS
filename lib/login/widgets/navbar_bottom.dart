import 'package:flutter/material.dart';

class NavbarBottom extends StatelessWidget {
  const NavbarBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0.0),
      child: Column(
        children: [
          Image.asset("assets/logos/op_logo_landscape.png", height: 90.0),
          Stack(
            children: [
              Image.asset(
                "assets/images/cambodia_vector.jpg",
                fit: BoxFit.cover,
                width: double.infinity,
                height: 100,
              ),
              Positioned(
                bottom:
                    20.0, // Adjust this value to control how far from bottom
                left: 0,
                right: 0,
                child: Text(
                  'Version 1.0',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
