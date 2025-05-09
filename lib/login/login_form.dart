import 'package:flutter/material.dart';

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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 60),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 100.0),
                child: Image.asset("assets/logos/op_logo.png"),
              ),
              SizedBox(height: 40.0),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Column(
                  children: [
                    TextField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        hintText: "Input your email",
                        labelText: "Username",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          onPressed: _clearUsername,
                          icon: Icon(Icons.clear),
                        ),
                      ),
                    ),

                    SizedBox(height: 35.0),

                    TextField(
                      decoration: InputDecoration(
                        hintText: "Input your password",
                        labelText: "password",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          onPressed: _toggleVisibility,
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                      obscureText: _obscureText,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
