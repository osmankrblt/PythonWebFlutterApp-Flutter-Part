import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseHelper {
  static getAllMessagesDate() {
    var stream = FirebaseFirestore.instance
        .collection('app')
        .doc("Contacts")
        .snapshots();

    return stream;
  }
}
