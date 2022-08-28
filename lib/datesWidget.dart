import 'package:flutter/material.dart';
import 'package:pythonwebflutterapp_flutter_part/helpers/firebaseHelper.dart';

import 'datesPage.dart';

class DatesParts extends StatefulWidget {
  DatesParts({Key? key}) : super(key: key) {}

  @override
  State<DatesParts> createState() => _DatesPartsState();
}

class _DatesPartsState extends State<DatesParts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: StreamBuilder<Object>(
            stream: FirebaseHelper.getAllMessagesDate(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasError) {
                print(" Snapshot hatası " + snapshot.error.toString());
                return Center(
                  child: Text('Something went wrong'),
                );
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: Text("Loading"),
                );
              } else if (!snapshot.hasData) {
                return Center(
                  child: Text("Henüz bir mesajınız yok"),
                );
              } else {
                return DatesList(snapshot: snapshot);
              }
            },
          ),
        ),
      ],
    );
  }
}
