import 'package:flutter/material.dart';

final formKey = GlobalKey<FormState>();
String firstName = "";
String lastName = "";
String email = "";
String password = "";
Widget registerForm(BuildContext context) {
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
            child: SingleChildScrollView(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      " Let's sign you up",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                  Text("welcome!",
                      style: Theme.of(context).textTheme.headline2),

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
                  const SizedBox(height: 10),
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
                  const SizedBox(height: 10),
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
                  const SizedBox(height: 10),
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
                    height: 55,
                    width: 135,
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
                  const SizedBox(height: 26),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 150.0),
                        child: Text(
                          "continue using",
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                      // Divider(
                      //   color: Colors.black,
                      //   thickness: 2.6,
                      //   height: 10,
                      //   indent: 90,
                      //   endIndent: 90,
                      // ),
                    ],
                  ),
                  const SizedBox(height: 22),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Icon(Icons.mail_lock_rounded,
                            color: Colors.red, size: 37)),
                    const SizedBox(width: 22),
                    Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Icon(Icons.facebook,
                            color: Colors.blue, size: 37))
                  ]),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
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
                          onPressed: () {},
                          child: Text(
                            "Login",
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}
