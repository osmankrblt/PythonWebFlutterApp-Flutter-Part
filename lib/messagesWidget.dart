import 'package:flutter/material.dart';

import 'MessagesPage.dart';

class MessagesParts extends StatefulWidget {
  late var mail;
  late var messages;
  MessagesParts({Key? key, required this.mail, required this.messages})
      : super(key: key);

  @override
  State<MessagesParts> createState() => _MessagesPartsState();
}

class _MessagesPartsState extends State<MessagesParts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: MessageList(mails: widget.messages),
        ),
      ],
    );
  }
}
