import 'package:flutter/material.dart';

import 'package:pythonwebflutterapp_flutter_part/mailsWidget.dart';

class PageforMails extends StatelessWidget {
  const PageforMails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs1 =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.purple.shade300, //change your color here
        ),
        backgroundColor: Colors.white,
        elevation: 3,
        centerTitle: true,
        title: Text(
          "Message Mails",
          style: TextStyle(color: Colors.purple, fontStyle: FontStyle.italic),
        ),
      ),
      body: MailsParts(date: routeArgs1["date"], mails: routeArgs1["mails"]),
    );
  }
}
