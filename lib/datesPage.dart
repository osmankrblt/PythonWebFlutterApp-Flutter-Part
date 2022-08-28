import 'dart:convert';

import 'package:flutter/material.dart';

import 'models/dateModels.dart';

class DatesList extends StatelessWidget {
  late var snapshot;

  DatesList({Key? key, required this.snapshot});

  @override
  Widget build(BuildContext context) {
    // print("Data : " + snapshot.data.docs.data().toString());
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        var data = snapshot.data.data();

        /*
        debugPrint(
            "Key :> " + data["27 August 2022"].keys.toString().split(",")[0]); */

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: DateModel(
              mailsDict: data[data.keys.toList()[index]],
              date: data.keys.toList()[index]),
        );
      },
      itemCount: snapshot.data.data() == null ? 0 : snapshot.data.data().length,
      //itemCount: snapshot.data.docs.length,
    );
  }
}
