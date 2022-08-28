import 'package:flutter/material.dart';
import 'package:pythonwebflutterapp_flutter_part/models/messageModels.dart';

class MessageList extends StatelessWidget {
  late var mails;

  MessageList({Key? key, required this.mails});

  @override
  Widget build(BuildContext context) {
    // print("Data : " + snapshot.data.docs.data().toString());
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        var data = mails;

        /*
        debugPrint(
            "Key :> " + data["27 August 2022"].keys.toString().split(",")[0]); */

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: MessageModel(
            messageTitle: data[data.keys.toList()[index]]["title"],
            message: data[data.keys.toList()[index]],
          ),
        );
      },
      itemCount: mails == null ? 0 : mails.length,
      //itemCount: snapshot.data.docs.length,
    );
  }
}
