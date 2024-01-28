import 'package:activity11/screen/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyA4obNqwm0L2vnwZCnwc36IGiJDlpcafOs",
          appId: "1:579299973092:android:7a78817108a11ca9d399f1",
          messagingSenderId: "579299973092", //project number
          projectId: "activity11-a554a",
          storageBucket: "activity11-a554a.appspot.com"));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'realtime CRUD',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
