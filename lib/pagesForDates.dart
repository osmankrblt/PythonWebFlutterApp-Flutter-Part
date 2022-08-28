import 'package:flutter/material.dart';
import 'package:pythonwebflutterapp_flutter_part/datesWidget.dart';

class PageforDates extends StatelessWidget {
  const PageforDates({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        elevation: 3,
        centerTitle: true,
        title: Text(
          "Messages Date",
          style: TextStyle(color: Colors.purple, fontStyle: FontStyle.italic),
        ),
      ),
      body: DatesParts(),
    );
  }
}
