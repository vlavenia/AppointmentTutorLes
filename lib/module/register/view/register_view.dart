import 'package:flutter/material.dart';
import 'package:privatedu/core.dart';
import '../controller/register_controller.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  Widget build(context, RegisterController controller) {
    controller.view = this;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 10),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          size: 24.0,
                        )),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30, left: 100),
                    child: Text(
                      "Sign Up",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Name"),
                    const SizedBox(
                      height: 12.0,
                    ),
                    TextFormField(
                      initialValue: 'your name',
                      style: const TextStyle(color: Colors.grey),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      onChanged: (value) {},
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text("Email"),
                    const SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      style: const TextStyle(color: Colors.grey),
                      initialValue: 'study@email.com',
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      onChanged: (value) {},
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text("Password"),
                    const SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      style: const TextStyle(color: Colors.grey),
                      initialValue: 'Your Password',
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      onChanged: (value) {},
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text("Phone Number"),
                    const SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      style: const TextStyle(color: Colors.grey),
                      initialValue: '0374 xxxx xxxx',
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30.0,
                    ),
                    SizedBox(
                      height: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //"I agree with the terms and conditions and also the protection of my personal data on this application")
                          Container(
                            padding: const EdgeInsets.only(left: 20),
                            width: 385,
                            child: const Text(
                              "I agree with the terms and conditions and also the protection of my personal data on this application",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 120, 119, 119)),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 20),
                            width: 385,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.lightBlue),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(112),
                                    ))),
                                onPressed: () {},
                                child: const Padding(
                                  padding: EdgeInsets.all(18),
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  ),
                                )),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }

  @override
  State<RegisterView> createState() => RegisterController();
}
