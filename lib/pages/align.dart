import 'package:flutter/material.dart';

class AlignDemo extends StatefulWidget {
  @override
  _AlignDemoState createState() => _AlignDemoState();
}

class _AlignDemoState extends State<AlignDemo> {
  AlignmentGeometry _alignment = Alignment.topRight;

  void _changeAlignment() {
    setState(() {
      _alignment = _alignment == Alignment.topRight
          ? Alignment.bottomLeft
          : Alignment.topRight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Align Demo'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [Colors.deepOrange, Colors.amberAccent]),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Animated Alignment Demo',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Container(
                height: 200,
                width: 180,
                color: Colors.blue[50],
                child: AnimatedAlign(
                  curve: Curves.bounceInOut,
                  duration: Duration(
                    seconds: 3
                  ),
                  alignment: _alignment,
                  child: FlutterLogo(size: 50),
                ),
              ),
              SizedBox(height: 15.0),
              RaisedButton(
                  color: Colors.brown,
                  child: Text('Change alignment'),
                  onPressed: () => _changeAlignment()
              ),
              SizedBox(height: 25.0),
            ],
          ),
        ),
      ),
    );
  }
}
