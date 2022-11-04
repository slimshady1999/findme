import 'package:findme/customerPanel/pages/dashboard/pages/users/usersDetails.dart';
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
              padding: const EdgeInsets.only(top: 60.0, left: 25),
              child: Text("Professional Handyman",
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
                      height: 50,
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
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.only(bottom: 10),
                itemBuilder: (context, index) {
                  ListOfUsers data = users[index];
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => UsersDetails()));
                      },
                      child: Card(
                        child: ListTile(
                            leading: CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage(data.image.toString()),
                            ),
                            title: Text(data.firstName.toString(),
                                style: Theme.of(context).textTheme.bodyText2),
                            subtitle: Text(data.service.toString(),
                                style: Theme.of(context).textTheme.bodyText1),
                            trailing: Container(
                              width: 100,
                              child: Row(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(right: 6.0),
                                      child: Icon(Icons.circle,
                                          size: 13, color: Colors.green),
                                    ),
                                    CircleAvatar(
                                      radius: 16,
                                      backgroundColor:
                                          Color.fromARGB(255, 200, 200, 200),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: (const Icon(Icons.call,
                                              color: Colors.deepPurple,
                                              size: 18))),
                                    ),
                                    const SizedBox(width: 10),
                                    CircleAvatar(
                                      radius: 16,
                                      backgroundColor:
                                          Color.fromARGB(255, 200, 200, 200),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: (const Icon(Icons.message,
                                              color: Colors.deepPurple,
                                              size: 18))),
                                    ),
                                  ]),
                            )),
                      ),
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
