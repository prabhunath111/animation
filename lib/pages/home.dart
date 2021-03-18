import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/align');
                },
              child: Text(
                'Animated Align widget'
              ),
            ),
            RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/padding');
              },
              child: Text(
                  'Animated Padding widget'
              ),
            ),
            RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/physicalmodel');
              },
              child: Text(
                  'Animated Physical Model Widget'
              ),
            ),
            RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/positioned');
              },
              child: Text(
                  'Animated positioned widget'
              ),
            )
          ],
        ),
      ),
    );
  }
}
