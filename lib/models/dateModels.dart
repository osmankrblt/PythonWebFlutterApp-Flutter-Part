import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateModel extends StatelessWidget {
  late var mailsDict;
  late var date;
  DateModel({required this.mailsDict, required this.date, Key? key})
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
          date,
          style: TextStyle(fontSize: 22),
        ),
        trailing: Icon(Icons.arrow_right),
        onTap: () {
          Navigator.pushNamed(context, '/mails',
              arguments: {"date": date, "mails": mailsDict});
        },
      ),
    );
  }
}
