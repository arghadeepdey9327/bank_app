import 'list_data.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'package:provider/provider.dart';

class main_body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<data>(builder: (context, data, child) {
      int amount = data.own, mine = 0;
      return Expanded(
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
              return GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return SingleChildScrollView(
                        child: Container(
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  'Paid to ' + data.name[index],
                                  textAlign: TextAlign.center,
                                  style: kTextStyle.copyWith(
                                    color: Colors.lightBlueAccent,
                                  ),
                                ),
                                TextField(
                                  autofocus: true,
                                  showCursor: true,
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  onChanged: (value) {
                                    mine = int.parse(value);
                                  },
                                ),
                                FlatButton(
                                  color: Colors.lightBlueAccent,
                                  onPressed: () {
                                    if (mine > amount) {
                                      showDialog(
                                          context: context,
                                          builder: (ctx) {
                                            return AlertDialog(
                                              content:
                                                  Text('NOT SUFFICIENT MONEY'),
                                              actions: [
                                                FlatButton(
                                                  onPressed: () {
                                                    Navigator.of(ctx).pop();
                                                  },
                                                  child: Text("okay"),
                                                ),
                                              ],
                                            );
                                          });
                                    } else {
                                      data.amount_paid(index, mine);
                                      Navigator.pop(context);
                                    }
                                  },
                                  child: Text(
                                    'Send',
                                    style: kButtonStyle,
                                  ),

                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                child: ListTile(
                    leading: Text(
                      data.name[index],
                      style: kTaskTile,
                    ),
                    title: Text(
                      data.email[index],
                      style: kTaskTile,
                    ),
                    trailing: Text(
                      data.amount[index].toString() + '/-',
                      style: kTaskTile,
                    )),
              );
            },
            itemCount: data.name.length,
          ),
        ),
      );
    });
  }
}
