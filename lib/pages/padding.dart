import 'package:flutter/material.dart';

class PaddingDemo extends StatefulWidget {
  @override
  _PaddingDemoState createState() => _PaddingDemoState();
}

class _PaddingDemoState extends State<PaddingDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Padding Demo'
        ),
      ),
    );
  }
}
