import 'package:flutter/material.dart';

class PositionedDemo extends StatefulWidget {
  @override
  _PositionedDemoState createState() => _PositionedDemoState();
}

class _PositionedDemoState extends State<PositionedDemo> {
  bool moveUp =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Position Demo'
        ),
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
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
                    'Animated Positioned Demo',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      moveUp = !moveUp;
                    });
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: 200.0,
                      width: 200.0,
                      color: Colors.white,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 90,
                            left: 50,
                            child: Text(
                              'Hello There!',
                              style: TextStyle(
                                color: Colors.pinkAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                              ),
                            ),
                          ),
                          AnimatedPositioned(
                            duration: Duration(milliseconds: 500),
                            top: moveUp?40:80,
                            right: 20,
                            child: Container(
                              height: 40,
                              width: 160,
                              decoration: BoxDecoration(
                                color: Colors.indigoAccent,
                                borderRadius: BorderRadius.circular(8)
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
