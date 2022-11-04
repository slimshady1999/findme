import "package:flutter/material.dart";

class CustomerChatPage extends StatelessWidget {
  const CustomerChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
          length: 2,
          initialIndex: 0,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Padding(
              padding: EdgeInsets.only(top: 50.0, left: 20),
              child: Text("CHATS HISTORY",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  )),
            ),
            const SizedBox(height: 35),
            const Card(
              child: TabBar(
                  // isScrollable: true,

                  physics: BouncingScrollPhysics(),
                  labelColor: Colors.deepPurple,
                  unselectedLabelColor: Color.fromARGB(255, 101, 101, 101),
                  indicatorColor: Colors.transparent,
                  labelStyle:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  tabs: [
                    Tab(text: "CHATS"),
                    Tab(text: "CALLS"),
                  ]),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.85,
              width: MediaQuery.of(context).size.width,
              // color: Color.fromARGB(133, 204, 204, 204),
              child:
                  const TabBarView(physics: BouncingScrollPhysics(), children: [
                Text("No chats available"),
                Text("No calls available"),
              ]),
            ),
          ])),
    );
  }
}
