import 'package:flutter/material.dart';
import 'package:widget_circular_animator/widget_circular_animator.dart';

import 'Res.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: animationsDemo(),
    );
  }
}

class animationsDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DemoState();
  }
}

class DemoState extends State<animationsDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Align(
        child: WidgetCircularAnimator(
          child: Image.asset(Resources.person),
        ),
      )),
    );
  }
}
