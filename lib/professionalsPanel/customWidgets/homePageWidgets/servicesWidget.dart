import "package:flutter/material.dart";

serviceWidget(BuildContext context) {
  return Column(
    children: [
      // Servive Roll 1

      Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: const [
                CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 36, 2, 95),
                    child: Icon(Icons.cleaning_services)),
                SizedBox(height: 5),
                Text("cleaning", style: TextStyle(fontSize: 13))
              ],
            ),
            Column(
              children: const [
                CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 10, 87, 151),
                    child: Icon(Icons.dry_cleaning,
                        color: Color.fromARGB(255, 74, 167, 244))),
                SizedBox(height: 5),
                Text("Laundry", style: TextStyle(fontSize: 13))
              ],
            ),
            Column(
              children: const [
                CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 8, 130, 12),
                    child: Icon(Icons.grass,
                        color: Color.fromARGB(255, 39, 255, 46))),
                SizedBox(height: 5),
                Text("Gardening", style: TextStyle(fontSize: 13))
              ],
            ),
            Column(
              children: const [
                CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 241, 87, 87),
                    child: Icon(Icons.color_lens,
                        color: Color.fromARGB(255, 250, 21, 5))),
                SizedBox(height: 5),
                Text("Painting", style: TextStyle(fontSize: 13))
              ],
            )
          ],
        ),
      ),
      const SizedBox(height: 10),

      // Servive Roll 2 //

      Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: const [
                CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 15, 95, 103),
                    child: Icon(Icons.plumbing,
                        color: Color.fromARGB(255, 57, 233, 249))),
                SizedBox(height: 5),
                Text("Plumbing", style: TextStyle(fontSize: 13))
              ],
            ),
            Column(
              children: const [
                CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 107, 59, 4),
                    child: Icon(Icons.electric_bolt,
                        color: Color.fromARGB(255, 221, 121, 7))),
                SizedBox(height: 5),
                Text("Electrician", style: TextStyle(fontSize: 13))
              ],
            ),
            Column(
              children: const [
                CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 83, 107, 245),
                    child: Icon(Icons.fastfood,
                        color: Color.fromARGB(255, 10, 40, 210))),
                SizedBox(height: 5),
                Text("Chef", style: TextStyle(fontSize: 13))
              ],
            ),
            Column(
              children: const [
                CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 156, 156, 10),
                    child: Icon(Icons.female,
                        color: Color.fromARGB(255, 195, 245, 13))),
                SizedBox(height: 5),
                Text("Hair Stylist", style: TextStyle(fontSize: 13))
              ],
            )
          ],
        ),
      )
    ],
  );
}
