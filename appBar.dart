import 'package:flutter/material.dart';
import 'constant.dart';
import 'package:provider/provider.dart';
import 'list_data.dart';
class Bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlueAccent,
      padding:
          EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 30,
            child: Icon(Icons.storage),
            backgroundColor: Colors.white,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Me',
            style: kTextStyle,
          ),
          Text(
            Provider.of<data>(context).own.toString()+'/-',
            style: kTextStyle.copyWith(fontSize: 30),
          )
        ],
      ),
    );
  }
}
