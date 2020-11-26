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
            child: WidgetCircularAnimator(
          size: 200,
          innerIconsSize: 3,
          outerIconsSize: 3,
          innerAnimation: Curves.bounceIn,
          outerAnimation: Curves.bounceIn,
          innerColor: Colors.orangeAccent,
          reverse: false,
          outerColor: Colors.orangeAccent,
          innerAnimationSeconds: 10,
          outerAnimationSeconds: 10,
          child: Container(
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.grey[200]),
            child: Icon(
              Icons.person_outline,
              color: Colors.deepOrange[200],
              size: 60,
            ),
          ),
        )),
      ),
    );
  }
}
