import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  @override
  CreateAccountState createState() => CreateAccountState();
}

class CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Account"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child:
            TextField(decoration: InputDecoration(labelText: "User Name")),
            padding: const EdgeInsets.all(10.0),
          ),
          Container(
            child: TextField(
                decoration: InputDecoration(labelText: "Enter Password")),
            padding: const EdgeInsets.all(10.0),
          ),
          Container(
            child: TextField(
                decoration: InputDecoration(labelText: "Retype Password ")),
            padding: const EdgeInsets.all(10.0),
          ),
          Container(
            child: TextField(
                decoration: InputDecoration(labelText: "Email Address")),
            padding: const EdgeInsets.all(10.0),
          ),
          Container(
            child: Center(
              child: RaisedButton(
                onPressed: () {},
                child: Text("Create Account"),
              ),
            ),
            padding: const EdgeInsets.all(10.0),
          )
        ],
      ),
    );
  }
}