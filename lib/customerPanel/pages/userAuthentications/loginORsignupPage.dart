import "package:flutter/material.dart";

import '../../customWidgets/forms/loginForm.dart';
import '../../customWidgets/forms/registerForm.dart';

class CustomerRegisterOrLoginPage extends StatelessWidget {
  const CustomerRegisterOrLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double imageHeight = MediaQuery.of(context).size.height / 1.90;
    double imageWidth = MediaQuery.of(context).size.width / 1.60;

    return Scaffold(
        body: Stack(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("images/illus/illus3.png",
                      height: imageHeight, width: imageWidth),
                  Text(
                      textAlign: TextAlign.center,
                      "FIND THE BEST PROFESSIONAL SERVICES",
                      style: Theme.of(context).textTheme.headline2),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10),
                    child: Text(
                        textAlign: TextAlign.center,
                        "We present to you the fast growing Home services Application right in your hands to ease the stress at home or work.",
                        style: Theme.of(context).textTheme.bodyText2),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  height: 55,
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.deepPurple)),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepPurple,
                    child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              isScrollControlled: true,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50),
                                      topRight: Radius.circular(50))),
                              context: context,
                              builder: (context) => CustomerRegisterForm());
                        },
                        borderRadius: BorderRadius.circular(20),
                        child: const Center(
                            child: Text("Register",
                                style: TextStyle(
                                    fontSize: 18.5, color: Colors.white)))),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  height: 55,
                  width: 130,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.deepPurple)),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepPurple,
                    child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              isScrollControlled: true,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50),
                                      topRight: Radius.circular(50))),
                              context: context,
                              builder: (context) => CustomerLoginForm());
                        },
                        borderRadius: BorderRadius.circular(20),
                        child: const Center(
                            child: Text("Login",
                                style: TextStyle(
                                    fontSize: 18.5, color: Colors.white)))),
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
