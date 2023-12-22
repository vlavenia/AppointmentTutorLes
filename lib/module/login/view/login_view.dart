import 'package:flutter/material.dart';
import 'package:privatedu/components/my_textfield.dart';
import 'package:privatedu/core.dart';
import '../controller/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30.0,
              ),
              //sign in text
              Text(
                "Sign In",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(
                height: 25.0,
              ),
              //username textfield
              MyTextField(),
              SizedBox(
                height: 10.0,
              ),
              MyTextField()
              //passowrd textfield
              //fotgot password?
              //Sign in
              //don't have an account? Sign up
              //or
              //google+fb+apple icon
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
