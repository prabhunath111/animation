import 'package:flutter/material.dart';

class AnimatedDefaultTextDemo extends StatefulWidget {
  @override
  _AnimatedDefaultTextDemoState createState() => _AnimatedDefaultTextDemoState();
}
bool _firstStyle = true;
double _fontSize = 90;
Color _color = Colors.blue;

class _AnimatedDefaultTextDemoState extends State<AnimatedDefaultTextDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Animated Text'
        ),
      ),
      body:  Center(
        child: Card(
          clipBehavior: Clip.antiAlias,elevation: 6.0,
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [Colors.deepOrange, Colors.amber]
                )
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    child: Text(
                      'Animated Default TextStyle Demo',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                  ),
                  AnimatedDefaultTextStyle(
                    duration: Duration(milliseconds: 300),
                    style: TextStyle(
                        color: _color,
                        fontSize: _fontSize,
                        fontWeight: FontWeight.bold
                    ),
                    child: Text(
                        'Flutter'
                    ),
                  ),
                  RaisedButton(
                      child: Text(
                          'Change Text Style'
                      ),
                      onPressed: (){
                        setState(() {
                          _fontSize = _firstStyle ? 90 : 30;
                          _color = _firstStyle ? Colors.blue : Colors.red;
                          _firstStyle = !_firstStyle;
                        });
                      })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
