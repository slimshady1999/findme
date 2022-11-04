import "package:flutter/material.dart";

class SpecialOffersPage extends StatelessWidget {
  const SpecialOffersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80.0, left: 25),
              child: Text("My Offers",
                  style: Theme.of(context).textTheme.headline2),
            ),

            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: MediaQuery.of(context).size.height / 4.2,
                width: MediaQuery.of(context).size.width,
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
            ),
            const SizedBox(height: 15),

            // Offer2

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: MediaQuery.of(context).size.height / 4.2,
                width: MediaQuery.of(context).size.width,
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
            ),
            const SizedBox(height: 15),

            // Offer3//

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: MediaQuery.of(context).size.height / 4.2,
                width: MediaQuery.of(context).size.width,
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
            ),
            const SizedBox(height: 15),

            // Offer4 //

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: MediaQuery.of(context).size.height / 4.2,
                width: MediaQuery.of(context).size.width,
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
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
