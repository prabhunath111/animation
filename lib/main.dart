import 'package:animation/pages/align.dart';
import 'package:animation/pages/animated_container.dart';
import 'package:animation/pages/animated_text.dart';
import 'package:animation/pages/home.dart';
import 'package:animation/pages/padding.dart';
import 'package:animation/pages/physicalmodel.dart';
import 'package:animation/pages/position.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/',
  routes: {
   '/': (context) => Home(),
    '/align': (context) => AlignDemo(),
    '/padding': (context) => PaddingDemo(),
    '/physicalmodel': (context) => PhysicalModelDemo(),
    '/positioned': (context) => PositionedDemo(),
    '/animateddefaulttext': (context) => AnimatedDefaultTextDemo(),
    '/animatedcontainerdemo': (context) => AnimatedContainerDemo()
  },
));