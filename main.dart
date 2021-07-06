import 'package:flutter/material.dart';
import 'splash.dart';
import 'main_screen.dart';
import 'package:provider/provider.dart';
import 'list_data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Replace the 3 second delay with your initialization code:
      future: Future.delayed(Duration(seconds: 3)),
      builder: (context, AsyncSnapshot snapshot) {
        // Show splash screen while waiting for app resources to load:
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(home: Splash());
        } else {
          // Loading is done, return the app:
          return ChangeNotifierProvider(
            child: MaterialApp(
              home: home(),
            ),
            create: (context) => data(),
          );
        }
      },
    );
  }
}
