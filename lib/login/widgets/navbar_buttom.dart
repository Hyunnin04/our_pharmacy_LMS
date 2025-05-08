import 'package:flutter/material.dart';

class NavbarButtom extends StatelessWidget {
  const NavbarButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            "assets/logos/op_logo_landscape.png",
            width: 180.0,
            height: 100.0,
          ),
          Image.asset("assets/images/cambodia_vector.jpg"),
        ],
      ),
    );
  }
}
