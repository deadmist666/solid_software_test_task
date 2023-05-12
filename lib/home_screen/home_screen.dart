import 'dart:math';

import 'package:flutter/material.dart';

/// Initial screen of the app
class HomeScreen extends StatefulWidget {
  /// Default const constructor
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color _backgroundColor = const Color.fromRGBO(255, 255, 255, 1);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GestureDetector(
        onTap: () => setState(() {
          _backgroundColor = _generateRandomColor();
        }),
        child: Scaffold(
          backgroundColor: _backgroundColor,
          body: const Center(
            child: Text(
              'Hello there',
            ),
          ),
        ),
      ),
    );
  }

  Color _generateRandomColor() {
    final rgbChannels = List.generate(3, (_) => Random().nextInt(256));

    return Color.fromRGBO(rgbChannels.first, rgbChannels[1], rgbChannels[2], 1);
  }
}
