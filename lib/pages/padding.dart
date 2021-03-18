import 'package:flutter/material.dart';

class PaddingDemo extends StatefulWidget {
  @override
  _PaddingDemoState createState() => _PaddingDemoState();
}

class _PaddingDemoState extends State<PaddingDemo> {
  bool paddingSmall = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Padding Demo'
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
                  'Animated Padding Demo',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),

              Container(
                height: 280,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        getAnimPaddingWidget(),
                        getAnimPaddingWidget(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        getAnimPaddingWidget(),
                        getAnimPaddingWidget(),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15.0),
              RaisedButton(
                  color: Colors.brown,
                  child: Text('Change Padding'),
                  onPressed: () {
                    setState(() {
                      paddingSmall=!paddingSmall;
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

  Widget getAnimPaddingWidget() {
    return AnimatedPadding(
      curve: Curves.bounceOut,
      duration: Duration(milliseconds: 500),
      padding: paddingSmall?EdgeInsets.all(5) : EdgeInsets.all(30),
      child: Container(
        height: 80.0,
        width: 80.0,
        color: Colors.blue,
      ),
    );
  }
}
