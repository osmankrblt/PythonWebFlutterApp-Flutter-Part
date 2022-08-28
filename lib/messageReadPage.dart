import 'dart:ui';

import 'package:flutter/material.dart';

class MessageReadPage extends StatelessWidget {
  const MessageReadPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs1 =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    var message = routeArgs1["message"];

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.purple.shade300, //change your color here
        ),
        backgroundColor: Colors.white,
        elevation: 3,
        centerTitle: true,
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Text(
            message["title"] + " Message",
            style: TextStyle(color: Colors.purple, fontStyle: FontStyle.italic),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(5),
                child: Text(
                  message["title"],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(5),
                child: Text(message["message"],
                    style: TextStyle(fontWeight: FontWeight.w400)),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple),
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Sender info: "),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              message["mail"],
                              style: TextStyle(color: Colors.purple),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Sender name : " + message["name"],
                              style: TextStyle(color: Colors.purple),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Text(
                        message["createdAt"].toDate().toString(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
