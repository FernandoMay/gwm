import 'package:flutter/material.dart';
import 'package:gwm/loginViewController.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyD8KeIqAOjaN627qIAEHsEQwtvI0Mu3wns",
          appId: "1:747924534231:android:07963c2878b5c893ad9192",
          messagingSenderId: "747924534231",
          projectId: "tuto1-b7c0c"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GWM',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}
