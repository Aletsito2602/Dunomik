import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAMIuRr4yy_szDyKE7ZQkcvPL2iGpnD-ew",
            authDomain: "dunomic-c1930.firebaseapp.com",
            projectId: "dunomic-c1930",
            storageBucket: "dunomic-c1930.appspot.com",
            messagingSenderId: "517007596096",
            appId: "1:517007596096:web:62d33018f79dcb7c791da5",
            measurementId: "G-1ZDGN8EFZP"));
  } else {
    await Firebase.initializeApp();
  }
}
