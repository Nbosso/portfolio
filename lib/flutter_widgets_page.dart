import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FlutterWidgetsPage extends StatefulWidget {
  const FlutterWidgetsPage({super.key});

  @override
  State<FlutterWidgetsPage> createState() => _FlutterWidgetsPageState();
}

class _FlutterWidgetsPageState extends State<FlutterWidgetsPage> {
  List widgets = [
    'AnimatedContainer',
    'Text Editor',
    'GridView',
    'ListWheelScrollView',
    'FadeAnimated',
    'FadeAnimated',
    'FadeAnimated',
    'FadeAnimated',
    'FadeAnimated',
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
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
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              constraints: const BoxConstraints(maxWidth: 1000),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Pesquise por widget',
                    border: OutlineInputBorder()),
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
              constraints: const BoxConstraints(maxWidth: 1000, maxHeight: 800),
              height: double.infinity - 800,
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  ...widgets.map((e) {
                    return InkWell(
                      onTap: (() {
                        
                      }),
                      child: Container(
                        width: 300,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.blue[50]
                        ),
                        child: const Icon(FontAwesomeIcons.faceGrinBeam),
                      ),
                    );
                  })
                ],
              ))
        ],
      ),
    );
  }
}
