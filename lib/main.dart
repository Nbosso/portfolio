import 'package:flutter/material.dart';
import 'package:portfolio/flutter_widgets_page.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfólio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/flutter_widgets': (context) => const FlutterWidgetsPage()
      },
      home: const HomePage(),
    );
  }
}
