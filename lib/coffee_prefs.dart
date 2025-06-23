import 'package:flutter/material.dart';
import 'package:flutter_coffee/styled_widget.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;
  int sugar = 1;
  void increaseStrength() {
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
  }

  void increaseSugar() {
    setState(() {
      sugar = sugar < 5 ? sugar + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            StyledBodyText("Strength: "),
            for (int i = 0; i < strength; i++)
              Image.asset(
                'assets/coffee_bean.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            Expanded(child: SizedBox(width: 50)),
            StyledButton(onPressed: increaseStrength, child: Text("+")),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            StyledBodyText("Sugar: "),
            if (sugar == 0) StyledBodyText("No Sugar Added..."),
            for (int i = 0; i < sugar; i++)
              Image.asset(
                'assets/sugar_cube.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            Expanded(child: SizedBox(width: 50)),
            StyledButton(onPressed: increaseSugar, child: Text("+")),
          ],
        ),
      ],
    );
  }
}

// Color Blend Mode tag with color property of image so it blends with the background
