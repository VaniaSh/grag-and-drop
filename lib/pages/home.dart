import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Created by Vania Shepetko')),
      body: Center(
        child: ElevatedButton(
          style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color>(Colors.black),
      ),
          onPressed: () {
            Navigator.pushNamed(context, '/game');
          },
          child: const Text('Play'),
        ),
      ),
    );
  }
}
