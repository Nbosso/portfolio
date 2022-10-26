import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      backgroundColor: Colors.white,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: FloatingActionButton(
            backgroundColor: Colors.white,
            mini: true,
            child: const Icon(
              Icons.menu_rounded,
              color: Colors.black,
            ),
            onPressed: () {
              key.currentState!.openDrawer();
            }),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors
                      .primaries[Random().nextInt(Colors.primaries.length)]
                      .withOpacity(0.5),
                  backgroundImage: const ExactAssetImage('assets/nb.png'),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text.rich(TextSpan(children: <InlineSpan>[
                  TextSpan(
                    text: 'Eu sou ',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                  ),
                  TextSpan(
                    text: 'Natan S. Bosso',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  )
                ])),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'Desenvolvedor Flutter',
                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                          speed: const Duration(milliseconds: 200),
                        ),
                      ],
                      repeatForever: true,
                      pause: const Duration(milliseconds: 2000),
                      displayFullTextOnTap: true,
                      stopPauseOnTap: true,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Icon(
                      Icons.devices,
                      size: 20,
                    )
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  constraints: const BoxConstraints(maxWidth: 800),
                  child: Column(
                    children: const [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Sobre mim:',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text.rich(TextSpan(children: <InlineSpan>[
                        TextSpan(
                          text:
                              '  Graduando em engenharia da computação (PUCPR) e trabalhando como Desenvolvedor de Sistemas Web e Aplicativos na',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        TextSpan(
                          text: ' Praisce Capital.',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        TextSpan(
                          text:
                              ' Já tive a oportunidade de trabalhar na área de',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        TextSpan(
                          text: ' empreendedorismo',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        TextSpan(
                          text:
                              ', ao qual obtive excelentes experiências e networking. Apaixonado por inovação e tecnologia, com o propósito de desenvolver soluções que impactam positivamente no dia a dia das pessoas.',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                      ])),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              leading: Icon(
                FontAwesomeIcons.linkedin,
                color: Colors.blue[800],
              ),
              title: const Text('Linkedin'),
              onTap: () async {
                if (!await launchUrl(Uri.parse(
                    'https://www.linkedin.com/in/natansantosbosso/'))) {
                  throw 'Could not launch ${Uri.parse('https://www.linkedin.com/in/natansantosbosso/')}';
                }
              },
            ),
            ListTile(
              leading: const Icon(
                FontAwesomeIcons.github,
                color: Colors.black,
              ),
              title: const Text('Repositório GitHub'),
              onTap: () async {
                await launchUrl(
                    Uri.parse('https://github.com/Nbosso?tab=repositories'));
              },
            ),
            ListTile(
              leading: const Icon(
                FontAwesomeIcons.f,
                color: Colors.blue,
              ),
              title: const Text('Flutter Widgets'),
              onTap: () {
                key.currentState!.closeDrawer();
                Navigator.pushNamed(context, '/flutter_widgets');
              },
            ),
          ],
        ),
      ),
    );
  }
}
