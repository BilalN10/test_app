import 'package:flutter/material.dart';
import 'package:test_application/service/color_service.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  ColorService colorService = ColorService();

  void _changeBackgroundColor() {
    setState(() {
      colorService.backgroundColor = colorService.generateRandomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeBackgroundColor,
      child: Scaffold(
        backgroundColor: colorService.backgroundColor,
        body: const Center(
          child: Text(
            'Hello there',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
