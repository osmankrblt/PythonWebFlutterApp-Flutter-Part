import 'package:flutter/material.dart';

import 'messagesWidget.dart';

class PageforMessages extends StatelessWidget {
  const PageforMessages({Key? key}) : super(key: key);

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
          "Message",
          style: TextStyle(color: Colors.purple, fontStyle: FontStyle.italic),
        ),
      ),
      body: MessagesParts(
          mail: routeArgs1["mail"], messages: routeArgs1["messages"]),
    );
  }
}
