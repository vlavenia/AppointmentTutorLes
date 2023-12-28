import 'package:flutter/material.dart';
import '../controller/dashboard_controller.dart';
import 'package:privatedu/core.dart';
import 'package:get/get.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      init: DashboardController(),
      builder: (controller) {
        controller.view = this;

        return const Scaffold(
          body: SingleChildScrollView(
            child: SafeArea(
                child: Padding(
              padding: EdgeInsets.all(23.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi, Jenny Wilson",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),
                  ),
                  Text("Here is your Course today "),
                  SizedBox(
                    height: 18.0,
                  ),
                  SearchBar()
                ],
              ),
            )),
          ),
        );
      },
    );
  }
}
