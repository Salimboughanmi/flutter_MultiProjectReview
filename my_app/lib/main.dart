import 'package:flutter/material.dart';
import 'package:my_app/FutureBuilder.dart';
import 'package:my_app/apipage.dart';
import 'package:my_app/homepage.dart';
import 'package:my_app/myapipage.dart';
import 'package:my_app/sharedprefer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Sharedprefer(),
      //home: ExempleApi(),
    );
  }
}
