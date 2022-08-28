import 'package:flutter/material.dart';

class MessageModel extends StatelessWidget {
  var messageTitle;
  var message;
  MessageModel({required this.message, required this.messageTitle, Key? key})
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
        title: Text(
          messageTitle,
          style: TextStyle(fontSize: 22),
        ),
        trailing: Icon(Icons.arrow_right),
        onTap: () {
          Navigator.pushNamed(context, '/read',
              arguments: {"message": message});
        },
      ),
    );
  }
}
