import "package:flutter/material.dart";

activityWidget(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 11, top: 15, right: 11),
    child: Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Total Bookings //

          Container(
              height: MediaQuery.of(context).size.height / 6.8,
              width: MediaQuery.of(context).size.width / 2.2,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 91, 6, 195),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 15,
                          ),
                          child: Text(
                            "82",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: 10,
                          ),
                          child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Color.fromARGB(255, 59, 2, 128),
                              child: Icon(Icons.book, color: Colors.white)),
                        )
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                      ),
                      child: Text(
                        "Total Booking(s)",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ])),

          // Total Services //

          Container(
              height: MediaQuery.of(context).size.height / 6.8,
              width: MediaQuery.of(context).size.width / 2.2,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 5, 169, 219),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 15,
                          ),
                          child: Text(
                            "67",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: 10,
                          ),
                          child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Color.fromARGB(255, 1, 94, 122),
                              child: Icon(Icons.handyman, color: Colors.white)),
                        )
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                      ),
                      child: Text(
                        "Total Service(s)",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ]))
        ],
      ),
      const SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Total Available Workers //

          Container(
              height: MediaQuery.of(context).size.height / 6.8,
              width: MediaQuery.of(context).size.width / 2.2,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 3, 206, 94),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 15,
                          ),
                          child: Text(
                            "103",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: 10,
                          ),
                          child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Color.fromARGB(255, 2, 111, 51),
                              child: Icon(Icons.person, color: Colors.white)),
                        )
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                      ),
                      child: Text(
                        "Online Workers(s)",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ])),

          // Total Earnings //

          Container(
              height: MediaQuery.of(context).size.height / 6.8,
              width: MediaQuery.of(context).size.width / 2.2,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 219, 5, 187),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 15,
                          ),
                          child: Text(
                            "\$67,345,00",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: 10,
                          ),
                          child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Color.fromARGB(255, 109, 2, 93),
                              child: Icon(Icons.attach_money,
                                  color: Colors.white)),
                        )
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                      ),
                      child: Text(
                        "Total Earning(s)",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ]))
        ],
      )
    ]),
  );
}
