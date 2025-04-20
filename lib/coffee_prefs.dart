import 'package:coffee_card/styled_body_text.dart';
import 'package:coffee_card/styled_button.dart';
import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;
  int sugar = 1;

  void increaseStrength(){
    //if strenth is less than 5, add 1 otherwise rest strength to 1
    setState(() {
      strength = strength < 5? strength + 1 : 1;
    });
    
    // print('Increased strength by 1');
  }

  void increaseSugars(){
    // print('Increased sugars by 1');
    setState(() {
      sugar = sugar < 5? sugar + 1 : 0;
    });
     
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            StyledBodyText('Strength: '),
            // Text('$strength'),
            for(int i = 0; i < strength; i++)
              Image.asset('assets/img/coffee_bean.png',
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
              ),
            Expanded(child: SizedBox()),//adds space between widgets
            // FilledButton(
            //   style: FilledButton.styleFrom(
            //     backgroundColor: Colors.brown,
            //     foregroundColor: Colors.white
            //   ),
            // onPressed: increaseStrength, 
            //   child: const Text('+'))
            StyledButton(onPressed: increaseStrength, child: const Text('+'))
          ],
        ),
        Row(
          children: [
            StyledBodyText('Sugars: '),
            // Text('$sugar'),
            if(sugar == 0)
              const Text('No sugar'),
            for(int i = 0; i < sugar; i++)
              Image.asset('assets/img/sugar_cube.png',
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
              ),
            Expanded(child: SizedBox()),//adds space between widgets
            // TextButton(
            //   style: TextButton.styleFrom(
            //     foregroundColor: Colors.brown
            //   ),
            // FilledButton(
            //   style: FilledButton.styleFrom(
            //     backgroundColor: Colors.brown,
            //     foregroundColor: Colors.white
            //   ),
            //   onPressed: increaseSugars, 
            // child: const Text('+'))
            StyledButton(onPressed: increaseSugars, child: const Text('+'))
          ],
        ),
      ],
    );
  }
}