import 'package:flutter/material.dart';

import 'models/mailModels.dart';

class MailList extends StatelessWidget {
  late var mails;

  MailList({Key? key, required this.mails});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        var data = mails;

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: MailModel(
            messagesDict: data[data.keys.toList()[index]],
            mailTitle: data.keys.toList()[index],
          ),
        );
      },
      itemCount: mails == null ? 0 : mails.length,
    );
  }
}
