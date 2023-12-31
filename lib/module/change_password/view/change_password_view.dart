import 'package:flutter/material.dart';
import 'package:privatedu/core.dart';
import '../controller/change_password_controller.dart';

class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({Key? key}) : super(key: key);

  Widget build(context, ChangePasswordController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("ChangePassword"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: const Column(
            children: [],
          ),
        ),
      ),
    );
  }

  @override
  State<ChangePasswordView> createState() => ChangePasswordController();
}
