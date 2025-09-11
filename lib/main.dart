import 'package:flutter/material.dart';

import 'screens/login.dart';
import 'screens/arrivage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Arrivage(),
    );
  }
}
