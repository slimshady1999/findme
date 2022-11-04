import "package:flutter/material.dart";

class CustomerActivityPage extends StatelessWidget {
  const CustomerActivityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
          length: 4,
          initialIndex: 0,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Padding(
              padding: EdgeInsets.only(top: 50.0, left: 20),
              child: Text("Recent activities!",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 7.0, left: 20),
              child: Text("Discover your recent activites\nkeep tracks on all.",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  )),
            ),
            const SizedBox(height: 35),
            const TabBar(
                isScrollable: true,
                physics: BouncingScrollPhysics(),
                labelColor: Colors.deepPurple,
                unselectedLabelColor: Color.fromARGB(255, 101, 101, 101),
                indicatorColor: Colors.transparent,
                labelStyle:
                    TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                tabs: [
                  Tab(text: "Total Bookings"),
                  Tab(text: "Accepted Bookings"),
                  Tab(text: "Rejected Bookings"),
                  Tab(text: "Jobs In Progress"),
                ]),
            Container(
              height: MediaQuery.of(context).size.height / 1.85,
              width: MediaQuery.of(context).size.width,
              // color: Color.fromARGB(133, 204, 204, 204),
              child:
                  const TabBarView(physics: BouncingScrollPhysics(), children: [
                Text("Total Bookings"),
                Text("Accepted Bookings"),
                Text("Rejected Bookings"),
                Text("Jobs In Progress"),
              ]),
            ),
          ])),
    );
  }
}
