import "package:flutter/material.dart";

class CustomerChangePasswordPage extends StatefulWidget {
  const CustomerChangePasswordPage({Key? key}) : super(key: key);

  @override
  State<CustomerChangePasswordPage> createState() =>
      _CustomerChangePasswordPageState();
}

class _CustomerChangePasswordPageState
    extends State<CustomerChangePasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: const Text("Change Password"),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(height: 55),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: SizedBox(
              height: 53,
              width: MediaQuery.of(context).size.width / 1.15,
              child: TextFormField(
                // // key: passowrdKey,
                // controller: passwordController,
                obscureText: true,
                validator: (password) {
                  if (password!.isNotEmpty && password.length > 6) {
                    return null;
                  } else {
                    return "Password must be 6 characters long (Invalid Passord)";
                  }
                },
                decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.lock_open),
                    suffixIconColor: const Color(0xFFd798f6),
                    hintText: ("Input your old password"),
                    labelStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide:
                            const BorderSide(color: Colors.deepPurple))),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: SizedBox(
              height: 53,
              width: MediaQuery.of(context).size.width / 1.15,
              child: TextFormField(
                // // key: passowrdKey,
                // controller: passwordController,
                obscureText: true,
                validator: (password) {
                  if (password!.isNotEmpty && password.length > 6) {
                    return null;
                  } else {
                    return "Password must be 6 characters long (Invalid Passord)";
                  }
                },
                decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.lock_open),
                    suffixIconColor: const Color(0xFFd798f6),
                    hintText: ("Input your new password"),
                    labelStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide:
                            const BorderSide(color: Colors.deepPurple))),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: SizedBox(
              height: 53,
              width: MediaQuery.of(context).size.width / 1.15,
              child: TextFormField(
                // // key: passowrdKey,
                // controller: passwordController,
                obscureText: true,
                validator: (password) {
                  if (password!.isNotEmpty && password.length > 6) {
                    return null;
                  } else {
                    return "Password must be 6 characters long (Invalid Passord)";
                  }
                },
                decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.lock_open),
                    suffixIconColor: const Color(0xFFd798f6),
                    hintText: ("Comfirm your new password"),
                    labelStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide:
                            const BorderSide(color: Colors.deepPurple))),
              ),
            ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: SizedBox(
                height: 40,
                width: 300,
                child: Material(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(15),
                    child: InkWell(
                        borderRadius: BorderRadius.circular(15),
                        onTap: () {},
                        child: Center(
                            child: Text("Update Password",
                                style: TextStyle(color: Colors.white)))))),
          ),
        ]));
  }
}
