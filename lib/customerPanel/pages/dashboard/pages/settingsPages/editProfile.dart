import "package:flutter/material.dart";

class CustomerEditProfilePage extends StatefulWidget {
  const CustomerEditProfilePage({Key? key}) : super(key: key);

  @override
  State<CustomerEditProfilePage> createState() =>
      _CustomerEditProfilePageState();
}

class _CustomerEditProfilePageState extends State<CustomerEditProfilePage> {
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

  // form validation //

  final formKey = GlobalKey<FormState>();
  String firstName = "";
  String lastName = "";
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    String? gmailDomain = "@gmail.com";
    String? yahooDomain = "@yahoo.com";
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          title: Text(
            "Edit Profile",
          )),
      body: SingleChildScrollView(
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile Picture //

              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/illus/illus2.png"),
                  radius: 64,
                  child: Icon(Icons.edit, color: Colors.white),
                ),
              ),
              const SizedBox(height: 45),

              Container(
                height: 53,
                width: MediaQuery.of(context).size.width / 1.15,
                child: TextFormField(
                  // // key: emailKey,
                  // controller: emailController,
                  validator: (firstName) {
                    if (firstName != null && firstName.length > 3) {
                      return null;
                    } else {
                      return "Edit your name";
                    }
                  },
                  decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.person),
                      suffixIconColor: const Color(0xFFd798f6),
                      label: const Text("Emmanuel"),
                      labelStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide:
                              const BorderSide(color: Colors.deepPurple))),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                height: 53,
                width: MediaQuery.of(context).size.width / 1.15,
                child: TextFormField(
                  // // key: emailKey,
                  // controller: emailController,
                  validator: (lastName) {
                    if (lastName != null && lastName.length > 2) {
                      return null;
                    } else {
                      return "Edit your name";
                    }
                  },
                  decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.person),
                      suffixIconColor: const Color(0xFFd798f6),
                      label: const Text("Joseph"),
                      hintText: ("Joseph"),
                      labelStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide:
                              const BorderSide(color: Colors.deepPurple))),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                height: 53,
                width: MediaQuery.of(context).size.width / 1.15,
                child: TextFormField(
                  // // key: emailKey,
                  // controller: emailController,
                  validator: (username) {
                    if (firstName != null && firstName.length > 3) {
                      return null;
                    } else {
                      return "Edit your username";
                    }
                  },
                  decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.person),
                      suffixIconColor: const Color(0xFFd798f6),
                      label: const Text("username"),
                      hintText: ("username"),
                      labelStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide:
                              const BorderSide(color: Colors.deepPurple))),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                height: 53,
                width: MediaQuery.of(context).size.width / 1.15,
                child: TextFormField(
                  // // key: emailKey,
                  // controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (email) {
                    if (email != null &&
                        email.length > 5 &&
                        email.contains(gmailDomain) |
                            email.contains(yahooDomain)) {
                      return null;
                    } else {
                      return "Enter Valid Email";
                    }
                  },
                  decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.email),
                      suffixIconColor: const Color(0xFFd798f6),
                      label: const Text("emmanueljoseph@gmail.com"),
                      hintText: ("emmanueljoseph@gmail.com"),
                      labelStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide:
                              const BorderSide(color: Colors.deepPurple))),
                ),
              ),
              const SizedBox(height: 15),

              // Date of Birth /
              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25),
                child: Card(
                  child: ListTile(
                      leading: const Icon(Icons.calendar_month),
                      title: Text("${selectedDate.toLocal()}".split(" ")[0]),
                      trailing: IconButton(
                          onPressed: () => _pickedDateDialog(context),
                          icon: const Icon(Icons.edit))),
                ),
              ),

              const SizedBox(height: 20),

              // Select your gender //

              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25),
                child: Card(
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
              ),

              // Button //
              const SizedBox(height: 45),
              Container(
                  height: 40,
                  width: 250,
                  margin: const EdgeInsets.only(bottom: 50),
                  child: Material(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(15),
                      child: InkWell(
                          borderRadius: BorderRadius.circular(15),
                          onTap: () {},
                          child: Center(
                              child: Text("Update Changes",
                                  style: TextStyle(color: Colors.white))))))
            ]),
      ),
    );
  }
}
