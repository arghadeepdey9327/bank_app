import 'package:flutter/material.dart';
import 'payment_history.dart';

class add_task extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.history),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return history();
          }),
        );
      },
    );
  }
}
