import "package:flutter/material.dart";

import '../../../../professionalsPanel/customWidgets/homePageWidgets/activitiesWidget.dart';
import '../../../../professionalsPanel/model/listOfUsersModel.dart';
import '../../../customWidgets/homePageWidgets/servicesWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          // Top Section //

          Padding(
            padding: const EdgeInsets.only(top: 21.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("images/icons/userface.jpg"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Emmanual Joseph",
                        ),
                        Row(
                          children: const [
                            Text(
                              "Hey, how you feeling",
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 3.0),
                              child: Icon(Icons.waving_hand,
                                  color: Color.fromARGB(255, 200, 181, 2),
                                  size: 20),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ]),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon:
                            const Icon(Icons.notifications_active, size: 21.5)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.chat, size: 21.5)),
                  ],
                )
              ],
            ),
          ),

          const SizedBox(height: 30),
          // Search Bar //

          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
            child: TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: ("search"),
                suffixIcon: const Icon(Icons.handyman,
                    size: 20.5, color: Colors.deepPurple),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.white)),
              ),
            ),
          ),

          const SizedBox(height: 20),

          // Special Offers //

          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Special Offers",
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          const SizedBox(height: 20),

          Container(
            height: MediaQuery.of(context).size.height / 4.3,
            width: MediaQuery.of(context).size.width / 1.2,
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    // fit: BoxFit.cover,
                    alignment: Alignment.topRight,
                    image: AssetImage(
                      "images/illus/illus4.png",
                    ))),
            child: Padding(
              padding: const EdgeInsets.only(left: 6.0, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("30%",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                      )),
                  SizedBox(height: 5),
                  Text("Today's Special!",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 50,
                    width: 120,
                    child: Text("Get 30% off on all cleaning jobs today!",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
            ),
          ),

          const SizedBox(height: 25),
          // Services Section Heading //

          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Services",
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                TextButton(
                  onPressed: () {},
                  child: const Text("See All",
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 15,
                        // fontWeight: FontWeight.bold
                      )),
                )
              ],
            ),
          ),

          const SizedBox(height: 20),
          // Services Section//
          serviceWidget(context),

          const SizedBox(height: 25),

          // Handymen //

          const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Professional Handymen",
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                TextButton(
                  onPressed: () {},
                  child: const Text("See All",
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 15,
                        // fontWeight: FontWeight.bold
                      )),
                )
              ],
            ),
          ),
          const SizedBox(height: 15),

          Container(
            height: 260,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(bottom: 20),
              itemBuilder: (context, index) {
                ListOfUsers data = users[index];
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                    child: Container(
                      height: 85,
                      width: 150,
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
                                          Theme.of(context).textTheme.bodyText2)
                                ]),
                            const SizedBox(height: 5),
                            Text(data.service.toString(),
                                style: Theme.of(context).textTheme.bodyText1),
                            const SizedBox(height: 10),
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
                                            size: 18))),
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
                                            size: 18))),
                                  ),
                                ])
                          ]),
                    ),
                  ),
                );
              },
              itemCount: 5,
            ),
          )
        ],
      ),
    ));
  }
}


/* const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: ("search"),
                  suffixIcon: const Icon(Icons.handyman,
                      size: 20.5, color: Colors.deepPurple),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 180, 179, 179))),
                ),
              ),
            ),

            // Activities//

            const SizedBox(height: 27),

            // activityWidget(context),

            const SizedBox(height: 25),
            // Special Offers Section //
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Special Offers",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                  TextButton(
                    onPressed: () {},
                    child: const Text("See All",
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 15,
                          // fontWeight: FontWeight.bold
                        )),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 4.3,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      // fit: BoxFit.cover,
                      alignment: Alignment.topRight,
                      image: AssetImage(
                        "images/illus/illus4.png",
                      ))),
              child: Padding(
                padding: const EdgeInsets.only(left: 6.0, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("30% OFF",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                        )),
                    SizedBox(height: 5),
                    Text("Today's Special!",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 50,
                      width: 120,
                      child: Text("Get 30% off on all cleaning jobs today!",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          )),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Services Section //

            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Services",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                  TextButton(
                    onPressed: () {},
                    child: const Text("See All",
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 15,
                          // fontWeight: FontWeight.bold
                        )),
                  )
                ],
              ),
            ),

            serviceWidget(context)

            */