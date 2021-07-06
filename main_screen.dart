import 'package:flutter/material.dart';
import 'appBar.dart';
import 'body.dart';
import 'add_task.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: add_task(),
        backgroundColor: Colors.lightBlueAccent,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Bar(),
              main_body(),
            ],
          ),
        ),
      ),
    );
  }
}
