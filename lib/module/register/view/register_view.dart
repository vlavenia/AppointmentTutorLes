import 'package:flutter/material.dart';
import 'package:privatedu/core.dart';
import '../controller/register_controller.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  Widget build(context, RegisterController controller) {
    controller.view = this;
    return const Scaffold();
  }

  @override
  State<RegisterView> createState() => RegisterController();
}
