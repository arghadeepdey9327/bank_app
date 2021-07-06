import 'package:flutter/foundation.dart';
import 'dart:async';
import 'package:path/path.dart';

class data extends ChangeNotifier {
  final name = [
    'Rohit',
    'Joy',
    'Akash',
    'Rahul',
    'Rikta',
    'Argha',
    'Aditya',
    'Roy',
    'Sankit',
    'Ankit'
  ];
  final email = [
    'Rohit@gmail.com',
    'Joy@gmail.com',
    'Akash@gmail.com',
    'Rahul@gmail.com',
    'Rikta@gmail.com',
    'Argha@gmail.com',
    'Aditya@gmail.com',
    'Roy@gmail.com',
    'Sankit@gmail.com',
    'Ankit@gmail.com',
  ];
  var amount = [1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 4500];
   int own = 1000;
   var amount1=[];
   var name1=[];
  void amount_paid(int index,int money) {
    int mo=amount[index];
  int up=mo+money;
  amount[index]=up;
  own-=money;
  name1.add(name[index]);
  amount1.add(money);
    notifyListeners();
  }
}
