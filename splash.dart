import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('picture/investment.png'),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'InstaSaving',
            style: TextStyle(
                color: Color(0xFFbf3be3), fontWeight: FontWeight.w700, fontSize: 50),
          )
        ],
      ),
    );
  }
}
