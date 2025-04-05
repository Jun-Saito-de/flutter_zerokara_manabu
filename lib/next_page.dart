import 'package:flutter/material.dart';

class NextPage extends StatelessWidget{
  // ここにイニシャライザを書く
  NextPage(this.name);
  String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Flutter大学"),
      ),
      body: Container(
        color: Colors.lightGreenAccent,
        child: Text(name), // ここで変数nameを使う
      ),
    );
  }

}
