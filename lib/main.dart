import 'package:flutter/material.dart';
import 'next_page.dart';


void main() {
  runApp(const MaterialSampleApp());
}

class MaterialSampleApp extends StatelessWidget {
  const MaterialSampleApp({super .key});

   @override
  Widget build(BuildContext context) {
     return MaterialApp(
       title: "Flutter Demo",
       theme: ThemeData(
         colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
       useMaterial3: true,
       ),
       home: const MyHomePage(),
     );
   }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: const Text("Flutter大学"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: double.infinity,
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'ここに入力してください',
            ),
            autofocus: true,
          ),
        ),
      ),
    );
  }
}