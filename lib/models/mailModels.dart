import 'package:flutter/material.dart';

class MailModel extends StatelessWidget {
  var mailTitle;
  var messagesDict;

  MailModel({required this.mailTitle, required this.messagesDict, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.purple, width: 1),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              blurRadius: 3,
              blurStyle: BlurStyle.normal,
              color: Colors.purple.shade300)
        ],
      ),
      child: ListTile(
        title: Expanded(
          child: Text(
            mailTitle,
            style: TextStyle(fontSize: 15),
          ),
        ),
        trailing: Icon(Icons.arrow_right),
        onTap: () {
          Navigator.pushNamed(context, '/messages',
              arguments: {"mail": mailTitle, "messages": messagesDict});
        },
      ),
    );
  }
}
