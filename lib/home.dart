import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_coffee/coffee_prefs.dart';
import 'package:flutter_coffee/styled_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: SystemNavigator.pop,
            icon: Icon(Icons.exit_to_app),
            color: Colors.black,
          ),
        ],
        title: Text(
          "Coffee Card",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.brown[700],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.brown[200],
            padding: EdgeInsets.all(20),
            child: StyledBodyText("How I like my Coffee..."),
          ),
          Container(
            color: Colors.brown[100],
            padding: EdgeInsets.all(20),
            child: CoffeePrefs(),
          ),
          Expanded(
            child: Image.asset(
              'assets/coffee_bg.jpg',
              fit: BoxFit.cover,
              alignment: Alignment.bottomCenter,
            ),
          ),
        ],
      ),
    );
  }
}

// row and columns have opposite main and cross axis alignment
// container --> column --> row 1 | row 2
