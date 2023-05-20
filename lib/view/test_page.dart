import 'package:flutter/material.dart';

import 'package:test_application/service/color_service.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int _counter = 0;

  ColorService colorService = ColorService();

  void _changeBackgroundColor() {
    setState(() {
      colorService.backgroundColor = colorService.generateRandomColor();
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeBackgroundColor,
      child: Scaffold(
        backgroundColor: colorService.backgroundColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Hello there',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 16),
              Text(
                'Bonus point: $_counter',
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
