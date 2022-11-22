import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:login_demo/firebase_options.dart';
import 'package:login_demo/screens/homepage.dart';
import 'package:login_demo/screens/signUp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.deepPurple,
    ),
    debugShowCheckedModeBanner: false,
  ));
}
