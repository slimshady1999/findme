import "package:flutter/material.dart";

import 'customerPanel/pages/userAuthentications/loginORsignupPage.dart';

class UserRole extends StatelessWidget {
  const UserRole({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double imageHeight = MediaQuery.of(context).size.height / 1.65;
    double imageWidth = MediaQuery.of(context).size.width / 1.2;

    return Scaffold(
        body: Column(
      children: [
        Image.asset("images/illus/illus5.png",
            height: imageHeight, width: imageWidth),
        Text("JOIN FINDME AS?", style: Theme.of(context).textTheme.headline2),
        const SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 15,
              shadowColor: Colors.deepPurple,
              child: Container(
                height: 40,
                width: 130,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.deepPurple)),
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.deepPurple,
                  child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) =>
                                    const CustomerRegisterOrLoginPage()),
                            (route) => false);
                      },
                      borderRadius: BorderRadius.circular(20),
                      child: const Center(
                          child: Text("CUSTOMER",
                              style: TextStyle(color: Colors.white)))),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 18,
              shadowColor: Colors.deepPurple,
              child: Container(
                height: 40,
                width: 190,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.deepPurple)),
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.deepPurple,
                  child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(20),
                      child: const Center(
                          child: Text("SERVICE PROVIDER",
                              style: TextStyle(color: Colors.white)))),
                ),
              ),
            ),
          ],
        )
      ],
    ));
  }
}
