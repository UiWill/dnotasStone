import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCc365lW5TQGqnPX8ET8Y9VbFEgitpTA0w",
            authDomain: "maquininha-b07f0.firebaseapp.com",
            projectId: "maquininha-b07f0",
            storageBucket: "maquininha-b07f0.appspot.com",
            messagingSenderId: "288130314922",
            appId: "1:288130314922:web:b590d6844b706f4f3816d3"));
  } else {
    await Firebase.initializeApp();
  }
}
