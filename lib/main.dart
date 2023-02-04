import 'package:flutter/material.dart';

import 'HomePage/home.dart';
import 'Settings/Settings.dart';
import 'communities/communities.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,

      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
