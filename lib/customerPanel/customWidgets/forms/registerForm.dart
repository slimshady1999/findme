import 'dart:ui';

import 'package:findme/customerPanel/customWidgets/forms/loginForm.dart';
import 'package:flutter/material.dart';

class CustomerRegisterForm extends StatelessWidget {
  const CustomerRegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: customerRegisterFormWidget(context),
        )
      ]),
    ));
  }
}

// Custom Widget //

final formKey = GlobalKey<FormState>();
String firstName = "";
String lastName = "";
String email = "";
String password = "";
Widget customerRegisterFormWidget(BuildContext context) {
  String? gmailDomain = "@gmail.com";
  String? yahooDomain = "@yahoo.com";

  return Container(
    height: MediaQuery.of(context).size.height / 1.10,
    width: MediaQuery.of(context).size.width,
    // decoration: const BoxDecoration(
    //     color: Colors.pink,
    //     borderRadius: BorderRadius.only(
    //         topLeft: Radius.circular(50), topRight: Radius.circular(50))),
    child: SingleChildScrollView(
      child: Column(
        children: [
          Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text(
                    " Let's sign you up.. \n Welcome",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),

                const SizedBox(height: 30),
                Container(
                  height: 53,
                  width: MediaQuery.of(context).size.width / 1.15,
                  child: TextFormField(
                    // // key: emailKey,
                    // controller: emailController,
                    validator: (firstName) {
                      if (firstName != null && firstName.length > 3) {
                        return null;
                      } else {
                        return "Enter Name";
                      }
                    },
                    decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.person),
                        suffixIconColor: const Color(0xFFd798f6),
                        label: const Text("first name"),
                        labelStyle: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide:
                                const BorderSide(color: Colors.deepPurple))),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 53,
                  width: MediaQuery.of(context).size.width / 1.15,
                  child: TextFormField(
                    // // key: emailKey,
                    // controller: emailController,
                    validator: (lastName) {
                      if (lastName != null && lastName.length > 2) {
                        return null;
                      } else {
                        return "Enter Name";
                      }
                    },
                    decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.person),
                        suffixIconColor: const Color(0xFFd798f6),
                        label: const Text("last name"),
                        labelStyle: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide:
                                const BorderSide(color: Colors.deepPurple))),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 53,
                  width: MediaQuery.of(context).size.width / 1.15,
                  child: TextFormField(
                    // // key: emailKey,
                    // controller: emailController,
                    validator: (firstName) {
                      if (firstName != null && firstName.length > 3) {
                        return null;
                      } else {
                        return "Enter Name";
                      }
                    },
                    decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.person),
                        suffixIconColor: const Color(0xFFd798f6),
                        label: const Text("username"),
                        labelStyle: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide:
                                const BorderSide(color: Colors.deepPurple))),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 53,
                  width: MediaQuery.of(context).size.width / 1.15,
                  child: TextFormField(
                    // // key: emailKey,
                    // controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: (email) {
                      if (email != null &&
                          email.length > 5 &&
                          email.contains(gmailDomain) |
                              email.contains(yahooDomain)) {
                        return null;
                      } else {
                        return "Enter Valid Email";
                      }
                    },
                    decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.email),
                        suffixIconColor: const Color(0xFFd798f6),
                        label: const Text("email"),
                        labelStyle: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide:
                                const BorderSide(color: Colors.deepPurple))),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 53,
                  width: MediaQuery.of(context).size.width / 1.15,
                  child: TextFormField(
                    // // key: passowrdKey,
                    // controller: passwordController,
                    obscureText: true,
                    validator: (password) {
                      if (password!.isNotEmpty && password.length > 6) {
                        return null;
                      } else {
                        return "Password must be 6 characters long (Invalid Passord)";
                      }
                    },
                    decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.lock_open),
                        suffixIconColor: const Color(0xFFd798f6),
                        label: const Text("password"),
                        labelStyle: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide:
                                const BorderSide(color: Colors.deepPurple))),
                  ),
                ),
                SizedBox(height: 28),

                // button //

                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Material(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(20),
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(20),
                        child: const Center(
                          child: Text(
                            "Register",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                ),
                const SizedBox(height: 19),

                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 90.0),
                        child: Text(
                          "Already a member?",
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (context) => CustomerLoginForm()),
                                (route) => false);
                          },
                          child: Container(
                            height: 45,
                            width: 89,
                            decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
