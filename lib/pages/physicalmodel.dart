import 'package:flutter/material.dart';
class PhysicalModelDemo extends StatefulWidget {
  @override
  _PhysicalModelDemoState createState() => _PhysicalModelDemoState();
}

class _PhysicalModelDemoState extends State<PhysicalModelDemo> {
  bool _isFlat = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Physical Demo'
        ),
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
                  'Animated PhysicalModel Demo',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),

              // Container(
              //   height: 280,
              //
              // ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedPhysicalModel(
                    duration: Duration(milliseconds: 1500),
                    shape: BoxShape.rectangle,
                    elevation:_isFlat ? 0 : 16,
                      borderRadius: BorderRadius.circular(_isFlat ? 0 : 30),
                      color: _isFlat ? Colors.green : Colors.white,
                    shadowColor: Colors.green,
                    child: Container(
                      height: 220.0,
                      width: 220.0,
                      child: FlutterLogo(
                        size: 100.0,
                      ),
                    ),
                  )
                ],
              ),

              SizedBox(height: 15.0),
              RaisedButton(
                  color: Colors.brown,
                  child: Text('Change'),
                  onPressed: () {
                    setState(() {
                      _isFlat = !_isFlat;
                      // paddingSmall=!paddingSmall;
                    });
                  }
              ),
              SizedBox(height: 25.0),
            ],
          ),
        ),
      ),
    );
  }
}
