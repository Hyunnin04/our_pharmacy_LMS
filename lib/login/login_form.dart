import 'package:flutter/material.dart';
import 'package:our_pharmacy_learning_management_system/login/widgets/navbar_bottom.dart';
import 'package:our_pharmacy_learning_management_system/utils/themes/theme_constant.dart';
// import 'package:our_pharmacy_learning_management_system/utils/themes/theme_constant.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _usernameController = TextEditingController();
  bool _obscureText = true;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void _clearUsername() {
    _usernameController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    children: [
                      SizedBox(height: 80.0),
                      // Logo
                      Center(
                        child: Image.asset(
                          "assets/logos/op_logo.png",
                          height: 130,
                          width: 135,
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(height: 55.0),

                      // Form Fields
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            TextField(
                              controller: _usernameController,
                              decoration: InputDecoration(
                                labelText: 'Username',
                                hintText: 'example@gmail.com',
                                border: OutlineInputBorder(),
                                suffixIcon: IconButton(
                                  icon: Icon(Icons.clear),
                                  onPressed: _clearUsername,
                                ),
                              ),
                            ),
                            SizedBox(height: 30.0),
                            TextField(
                              obscureText: _obscureText,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                hintText: 'Password',
                                border: OutlineInputBorder(),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _obscureText
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                  ),
                                  onPressed: _toggleVisibility,
                                ),
                              ),
                            ),
                            SizedBox(height: 45),
                            SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      ThemeConstant.lightScheme.secondary,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "Login",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Spacer(),

                      NavbarBottom(),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
