import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("My coffee app"),
        backgroundColor: Colors.brown[700],
        centerTitle: true,
      ),
      body: const Home(),
    )
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override //build helps reload the app automatically without us manually doing it
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.fromLTRB(20, 20, 0, 0),
      child: const Text("Hello Addicts!", style: TextStyle(
        color: Colors.white,
        fontSize: 18,
        letterSpacing: 4,
        decoration: TextDecoration.underline,
        
      ),),
    );
  }
}
