import "package:flutter/material.dart";

import '../../../../../professionalsPanel/model/listOfUsersModel.dart';

class UsersDetails extends StatelessWidget {
  /* ListOfUsers mount;
  UsersDetails(this.mount, {Key? key}) : super(key: key); */

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_this
    // var selectedUsers = this.mount;

    return Scaffold(
        appBar: AppBar(
            centerTitle: true, elevation: 0, title: Text('users.firstName')),
        body: Column(children: []));
  }
}
