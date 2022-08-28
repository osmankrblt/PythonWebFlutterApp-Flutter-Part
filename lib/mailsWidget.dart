import 'package:flutter/material.dart';

import 'package:pythonwebflutterapp_flutter_part/mailsPage.dart';

class MailsParts extends StatefulWidget {
  late var date;
  late var mails;
  MailsParts({Key? key, required this.date, required this.mails})
      : super(key: key);

  @override
  State<MailsParts> createState() => _MailsPartsState();
}

class _MailsPartsState extends State<MailsParts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: MailList(mails: widget.mails),
        ),
      ],
    );
  }
}
