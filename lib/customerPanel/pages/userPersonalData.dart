import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class CustomerPersonalData extends StatefulWidget {
  const CustomerPersonalData({Key? key}) : super(key: key);

  @override
  State<CustomerPersonalData> createState() => _CustomerPersonalDataState();
}

class _CustomerPersonalDataState extends State<CustomerPersonalData> {
  DateTime selectedDate = DateTime.now();

  Future<void> _pickedDateDialog(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1950, 8),
        lastDate: DateTime(3101));

    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

// gender picker //
  static List<String> items = ["Male", "Female"];
  String dropdownValue = items.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: SingleChildScrollView(
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Welcome Message //

                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                      "Dear exteemed User please \ncomplete your profile below",
                      style: Theme.of(context).textTheme.headline1),
                ),
                const SizedBox(height: 25),

                // Profile Picture //

                const CircleAvatar(
                  backgroundImage: AssetImage("images/illus/illus2.png"),
                  radius: 64,
                  child: Icon(Icons.edit, color: Colors.white),
                ),
                const SizedBox(height: 45),

                // Date of Birth //

                Text("Date Of Birth",
                    style: Theme.of(context).textTheme.headline3),
                const SizedBox(height: 10),

                Card(
                  child: ListTile(
                      leading: const Icon(Icons.calendar_month),
                      title: Text("${selectedDate.toLocal()}".split(" ")[0]),
                      trailing: IconButton(
                          onPressed: () => _pickedDateDialog(context),
                          icon: const Icon(Icons.edit))),
                ),

                const SizedBox(height: 20),

                // Select your gender //

                Text("Gender", style: Theme.of(context).textTheme.headline3),
                const SizedBox(height: 10),

                Card(
                  child: ListTile(
                    leading: const Icon(Icons.person),
                    title: Text(dropdownValue),
                    trailing: DropdownButton(
                        dropdownColor: Colors.deepPurple,
                        iconSize: 35,
                        value: dropdownValue,
                        items: items.map((String items) {
                          return DropdownMenuItem(
                              value: items, child: Text(items));
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue = value!;
                          });
                        }),
                  ),
                ),

                // Button //
                const SizedBox(height: 50),
                Container(
                    height: 40,
                    width: 120,
                    child: Material(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(20),
                        child: InkWell(
                            borderRadius: BorderRadius.circular(20),
                            onTap: () {},
                            child: Center(
                                child: Text("Verify",
                                    style: TextStyle(color: Colors.white))))))
              ]),
        ),
      ),
    );
  }

  // Date Of Birth Picker //

}
