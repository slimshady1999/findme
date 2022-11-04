import "package:flutter/material.dart";

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Profile Section //

          Padding(
            padding: const EdgeInsets.only(top: 80.0, left: 25),
            child:
                Text("Settings", style: Theme.of(context).textTheme.headline2),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Card(
              child: Container(
                height: 80,
                width: MediaQuery.of(context).size.width / 1.15,
                decoration: BoxDecoration(
                    // color: Color.fromARGB(255, 92, 92, 92),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(children: [
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Hey, how you feeling",
                                style: Theme.of(context).textTheme.bodyText1),
                            const Padding(
                              padding: EdgeInsets.only(left: 3.0),
                              child: Icon(Icons.waving_hand,
                                  color: Color.fromARGB(255, 200, 181, 2),
                                  size: 20),
                            )
                          ],
                        ),
                        const Text("Emmanual Joseph")
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ),

          // Account Section //

          Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 25),
            child: Row(
              children: [
                Icon(Icons.person, color: Color.fromARGB(255, 151, 151, 151)),
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Text("Account",
                      style: Theme.of(context).textTheme.headline3),
                ),
              ],
            ),
          ),
          const SizedBox(height: 13),

          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Card(
              child: Container(
                  height: 140,
                  width: MediaQuery.of(context).size.width / 1.15,
                  decoration: BoxDecoration(
                      // color: Color.fromARGB(255, 92, 92, 92),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ListTile(
                          title: Text(
                            "Edit Profile",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          trailing: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_forward_ios,
                                  color: Colors.white)),
                        ),
                        ListTile(
                          title: Text(
                            "Change Password",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_forward_ios,
                                  color: Colors.white)),
                        ),
                      ])),
            ),
          ),

          // Notification Section //

          Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 25),
            child: Row(
              children: [
                const Icon(Icons.notifications,
                    color: Color.fromARGB(255, 151, 151, 151)),
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Text("Notifications",
                      style: Theme.of(context).textTheme.headline3),
                ),
              ],
            ),
          ),
          const SizedBox(height: 13),

          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Card(
              child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width / 1.15,
                  decoration: BoxDecoration(
                      // color: Color.fromARGB(255, 92, 92, 92),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ListTile(
                            title: Text(
                              "App Notification",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            trailing: Switch(
                                value: value,
                                onChanged: (onChanged) {
                                  setState(() {
                                    value = onChanged;
                                  });
                                },
                                activeColor: Colors.green,
                                inactiveTrackColor:
                                    Color.fromARGB(255, 101, 101, 101))),
                      ])),
            ),
          )

          // Others //

          ,

          Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 25),
            child: Row(
              children: [
                const Icon(Icons.add_link_rounded,
                    color: Color.fromARGB(255, 151, 151, 151)),
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Text("Others",
                      style: Theme.of(context).textTheme.headline3),
                ),
              ],
            ),
          ),
          const SizedBox(height: 13),

          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Card(
              child: Container(
                  height: 260,
                  width: MediaQuery.of(context).size.width / 1.15,
                  decoration: BoxDecoration(
                      // color: Color.fromARGB(255, 92, 92, 92),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ListTile(
                          title: Text(
                            "Language",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_forward_ios,
                                  color: Colors.white)),
                        ),
                        ListTile(
                          title: Text(
                            "About",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_forward_ios,
                                  color: Colors.white)),
                        ),
                        ListTile(
                          title: Text(
                            "Privacy Policy",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_forward_ios,
                                  color: Colors.white)),
                        ),
                        ListTile(
                          title: Text(
                            "Logout",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_forward_ios,
                                  color: Colors.white)),
                        ),
                      ])),
            ),
          ),
        ],
      ),
    ));
  }
}
