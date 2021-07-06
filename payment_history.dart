import 'package:flutter/material.dart';
import 'constant.dart';
import 'package:provider/provider.dart';
import 'list_data.dart';
import 'body.dart';

class history extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: SafeArea(
          child: Consumer<data>(builder: (context, data, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  color: Colors.blueAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          child: Icon(
                            Icons.arrow_back,
                            size: 80,
                            color: Colors.white,
                          ),
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (ctx) {
                              return main_body();
                            }),
                          ),
                        ),
                        Text(
                          'PAYMENT HISTORY',
                          style: kPayment,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(
                            data.name1[index],
                            style: kTaskTile,
                          ),
                          trailing: Text(
                            data.amount1[index].toString(),
                            style: kTaskTile,
                          ),
                        );
                      },
                      itemCount: data.name1.length,
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
