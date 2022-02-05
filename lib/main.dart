import 'package:flutter/material.dart';
import 'package:splash/emailRegistration.dart';
import 'package:splash/profileaccountinfo.dart';
import 'package:splash/resetpasswordselectmethod.dart';
import 'package:splash/resetpasswordthrough.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Black History Gram',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: ProfileAccountInfo(),
    );
  }
}

