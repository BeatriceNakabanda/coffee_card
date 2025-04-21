import 'package:coffee_card/coffee_prefs.dart';
import 'package:coffee_card/styled_body_text.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override //build helps reload the app automatically without us manually doing it
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My coffee card", style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),),
        backgroundColor: Colors.brown[700],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.brown[200],
            padding: const EdgeInsets.all(20),
            child: StyledBodyText('How I like my Coffee...'),
          ),
          Container(
            color: Colors.brown[100],
            padding: const EdgeInsets.all(20),
            child: const CoffeePrefs(),
          ),
          Expanded(child: Image.asset('assets/img/coffee_bg.jpg',
          fit: BoxFit.fitWidth,
          alignment: Alignment.bottomCenter,)) //grows to fit the available space
        ],
      ),
    );
  }
}