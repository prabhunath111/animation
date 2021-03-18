import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerDemo extends StatefulWidget {
  @override
  _AnimatedContainerDemoState createState() => _AnimatedContainerDemoState();
}
Color color;
double borderRadius;
double margin;
Alignment alignment; //2
class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    color = Colors.deepPurple;
    borderRadius = generateBorderRadius();
    margin = generateMargin();
    alignment = Alignment.center; //2
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Animated Container'
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                width: 280,
                height: 240,
                child: AnimatedContainer(
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(borderRadius)),
                  duration: const Duration(milliseconds: 1000),
                  curve: Curves.elasticOut,
                  alignment: alignment,
                  //2
                  child: FlutterLogo(size: 80),
                ),
              ),
            ),
            RaisedButton(
                child: Text('Change color'), onPressed: () => changeColor()),
            RaisedButton(
                child: Text('Change radius'), onPressed: () => changeRadius()),
            RaisedButton(
                child: Text('Change margin'), onPressed: () => changeMargin()),
            RaisedButton(
                child: Text('Change all'), onPressed: () => changeAll()),
            RaisedButton(
                child: Text('Change alignment'),
                onPressed: () => changeAlignment()),
          ],
        ),
      ),
    );
  }
  void changeColor() {
    setState(() {
      color = generateColor();
    });
  }

  void changeRadius() {
    setState(() {
      borderRadius = generateBorderRadius();
    });
  }

  void changeMargin() {
    setState(() {
      margin = generateMargin();
    });
  }

  void changeAll() {
    setState(() {
      color = generateColor();
      borderRadius = generateBorderRadius();
      margin = generateMargin();
    });
  }

  void changeAlignment() {
    setState(() {
      alignment = (alignment == Alignment.center)
          ? Alignment.bottomCenter
          : Alignment.center;
    });
  }

  Color generateColor() => Color(0xFFFFFFFF & Random().nextInt(0xFFFFFFFF));

  double generateBorderRadius() => Random().nextDouble() * 64;

  double generateMargin() => Random().nextDouble() * 64;
}
