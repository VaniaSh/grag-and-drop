import 'package:flutter/material.dart';

import 'pages/game.dart';
import 'pages/home.dart';

void main() => runApp(const DragApp());

class DragApp extends StatelessWidget {
  const DragApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test task by Vania Shepetko',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const HomeScreen(),
        // When navigating to the "/game" route, build the GameScreen widget.
        '/game': (context) => const DragScreen(),
      },
    );
  }
}

