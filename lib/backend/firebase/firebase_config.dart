import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCIQ2dzmP4PohmQSZ3jAXecpJiEkUufGUI",
            authDomain: "botidinamix-a6d7b.firebaseapp.com",
            projectId: "botidinamix-a6d7b",
            storageBucket: "botidinamix-a6d7b.appspot.com",
            messagingSenderId: "75562462410",
            appId: "1:75562462410:web:126bd9453e03f8e80a5833"));
  } else {
    await Firebase.initializeApp();
  }
}
