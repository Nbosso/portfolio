import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:webpage_nb/home_page.dart';

class FlutterWidgetsPage extends StatefulWidget {
  const FlutterWidgetsPage({super.key});

  @override
  State<FlutterWidgetsPage> createState() => _FlutterWidgetsPageState();
}

class _FlutterWidgetsPageState extends State<FlutterWidgetsPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                mini: true,
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
            ),
          ),
          const Text('Em construção...'),
        ],
      ),
    );
  }
}
