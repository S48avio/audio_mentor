import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyClWABkoTyZ8XrIXaaJChZPvqTPCKdfhTA",
            authDomain: "classproject-53b90.firebaseapp.com",
            projectId: "classproject-53b90",
            storageBucket: "classproject-53b90.appspot.com",
            messagingSenderId: "117138485718",
            appId: "1:117138485718:web:6d9156971b8bf88b3ef477",
            measurementId: "G-2YHJSLJ8ED"));
  } else {
    await Firebase.initializeApp();
  }
}
