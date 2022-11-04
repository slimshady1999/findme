import "package:flutter/material.dart";

class ListOfUsers {
  String? firstName;
  IconData? call;
  IconData? message;
  String? service;
  Icon? status;
  String? image;

  ListOfUsers(
      {this.firstName,
      this.call,
      this.status,
      this.message,
      this.service,
      this.image});
}

final List<ListOfUsers> users = [
  ListOfUsers(
      firstName: "David John",
      call: (Icons.call),
      message: (Icons.message),
      // status: Icons.circle,

      service: "Gardener",
      image: "images/icons/userface.jpg"),
  ListOfUsers(
      firstName: "Paul Mark",
      call: (Icons.call),
      message: (Icons.message),
      service: "Cleaner",
      image: "images/icons/userface.jpg"),
  ListOfUsers(
      firstName: "James Andrew",
      call: (Icons.call),
      message: (Icons.message),
      service: "Hair Stylist",
      image: "images/icons/userface.jpg"),
  ListOfUsers(
      firstName: "Scott Steven",
      call: (Icons.call),
      message: (Icons.message),
      service: "Electrician",
      image: "images/icons/userface.jpg"),
  ListOfUsers(
      firstName: "Robert Stephen",
      call: (Icons.call),
      message: (Icons.message),
      service: "Chef",
      image: "images/icons/userface.jpg"),
  ListOfUsers(
      firstName: "William Craig",
      call: (Icons.call),
      message: (Icons.message),
      service: "Decorator",
      image: "images/icons/userface.jpg"),
];
