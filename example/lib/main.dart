import 'package:example/Res.dart';
import 'package:flutter/material.dart';
import 'package:widget_circular_animator/widget_circular_animator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Align(
          child: WidgetCircularAnimator(
            size: 200,
            innerIconsSize: 3,
            outerIconsSize: 3,
            innerColor: Colors.deepOrange,
            outerColor: Colors.deepPurple,
            innerAnimationSeconds: 30,
            outerAnimationSeconds: 30,
            child: Image.asset(Resources.person),
          ),
        )),
      ),
    );
  }
}
