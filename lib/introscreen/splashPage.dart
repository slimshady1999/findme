import "package:flutter/material.dart";

import '../userRole.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double imageHeight = MediaQuery.of(context).size.height / 1.35;
    double imageWidth = MediaQuery.of(context).size.width / 1.20;

    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => const UserRole()),
                  (route) => false);
            },
            child: const Icon(Icons.arrow_forward_ios)),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Column(
          children: [
            Expanded(
              child: Image.asset("images/illus/illus2.png",
                  height: imageHeight, width: imageWidth),
            ),
            const SizedBox(height: 30),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text("Welcome to \nFindMe",
                        style: Theme.of(context).textTheme.headline1),
                  ),
                  const SizedBox(height: 7),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                    child: Text(
                        "Find-Me is an online professional service that connects people and skilled individuals for home and office needs.",
                        style: Theme.of(context).textTheme.bodyText2),
                  ),
                  const SizedBox(height: 90),
                ],
              ),
            )
          ],
        ));
  }
}
