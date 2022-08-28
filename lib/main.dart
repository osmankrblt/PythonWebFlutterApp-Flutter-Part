import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pythonwebflutterapp_flutter_part/helpers/firebase_options.dart';

import 'package:pythonwebflutterapp_flutter_part/messageReadPage.dart';
import 'package:pythonwebflutterapp_flutter_part/pagesForDates.dart';
import 'package:pythonwebflutterapp_flutter_part/pagesForMail.dart';
import 'package:pythonwebflutterapp_flutter_part/pagesForMessages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => PageforDates(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/mails': (context) => PageforMails(),
        '/messages': (context) => PageforMessages(),
        '/read': (context) => MessageReadPage(),
      },
    );
  }
}
