import "package:flutter/material.dart";

import '../../../model/listOfUsersModel.dart';

class Users extends StatelessWidget {
  const Users({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Color> colors = [Colors.green, Colors.red];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Section //

            Padding(
              padding: const EdgeInsets.only(top: 80.0, left: 25),
              child: Text("Services",
                  style: Theme.of(context).textTheme.headline2),
            ),

            // Search Section //

            const SizedBox(height: 19.9),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, top: 6),
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          hintText: ("search"),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.deepPurple)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 180, 179, 179))),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: IconButton(
                      onPressed: () {},
                      icon:
                          (const Icon(Icons.arrow_drop_down_circle, size: 36))),
                ),
              ],
            ),
            const SizedBox(height: 20.9),
            // List Of Users //

            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.only(bottom: 10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  ListOfUsers data = users[index];
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 85,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 90,
                              width: 200,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        data.image.toString(),
                                      ))),
                            ),
                            const SizedBox(height: 5),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.circle,
                                      color: Colors.green, size: 15),
                                  const SizedBox(width: 5),
                                  Text(data.firstName.toString(),
                                      style:
                                          Theme.of(context).textTheme.bodyText1)
                                ]),
                            const SizedBox(height: 5),
                            Text(data.service.toString(),
                                style: Theme.of(context).textTheme.bodyText1),
                            const SizedBox(height: 5),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 16,
                                    backgroundColor:
                                        Color.fromARGB(255, 200, 200, 200),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: (const Icon(Icons.call,
                                            color: Colors.deepPurple,
                                            size: 21))),
                                  ),
                                  const SizedBox(width: 20),
                                  CircleAvatar(
                                    radius: 16,
                                    backgroundColor:
                                        Color.fromARGB(255, 200, 200, 200),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: (const Icon(Icons.message,
                                            color: Colors.deepPurple,
                                            size: 21))),
                                  ),
                                ])
                          ]),
                    ),
                  );
                },
                itemCount: users.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
