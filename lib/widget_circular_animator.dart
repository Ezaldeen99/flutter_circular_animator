library widget_circular_animator;

import 'dart:math';

import 'package:flutter/material.dart';

class WidgetCircularAnimator extends StatefulWidget {
  const WidgetCircularAnimator({
    required this.child,
    this.innerColor = Colors.deepOrange,
    this.outerColor = Colors.deepOrange,
    this.innerAnimation = Curves.linear,
    this.outerAnimation = Curves.linear,
    this.size = 200,
    this.innerIconsSize = 3,
    this.outerIconsSize = 3,
    this.innerAnimationSeconds = 30,
    this.outerAnimationSeconds = 30,
    this.reverse = true,
  });

  final Color innerColor;
  final Color outerColor;
  final Curve innerAnimation;
  final Curve outerAnimation;
  final double innerIconsSize;
  final double size;
  final double outerIconsSize;
  final int innerAnimationSeconds;
  final int outerAnimationSeconds;
  final Widget child;
  final bool reverse;

  @override
  _WidgetAnimatorState createState() => _WidgetAnimatorState();
}

class _WidgetAnimatorState extends State<WidgetCircularAnimator>
    with TickerProviderStateMixin {
  late Animation<double> animation1;
  late Animation<double> animation2;
  late AnimationController controller2;
  late AnimationController controller1;

  @override
  void initState() {
    super.initState();
    initAnimations();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          _firstArc(),
          _secondArc(),
          _child(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller2.dispose();
    controller1.dispose();
    super.dispose();
  }

  Center _child() {
    return Center(
      child: Container(
        width: widget.size * 0.7,
        height: widget.size * 0.7,
        child: widget.child,
      ),
    );
  }

  Center _secondArc() {
    return Center(
      child: RotationTransition(
        turns: animation2,
        child: CustomPaint(
          painter: Arc2Painter(
              color: widget.outerColor, iconsSize: widget.innerIconsSize),
          child: Container(
            width: widget.size,
            height: widget.size,
          ),
        ),
      ),
    );
  }

  Center _firstArc() {
    return Center(
      child: RotationTransition(
        turns: animation1,
        child: CustomPaint(
          painter: Arc1Painter(
              color: widget.innerColor, iconsSize: widget.outerIconsSize),
          child: Container(
            width: 0.85 * widget.size,
            height: 0.85 * widget.size,
          ),
        ),
      ),
    );
  }

  void initAnimations() {
    controller1 = AnimationController(
        duration: Duration(seconds: widget.innerAnimationSeconds), vsync: this);

    controller2 = AnimationController(
        duration: Duration(seconds: widget.outerAnimationSeconds), vsync: this);

    animation1 = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: controller1,
        curve: Interval(0.0, 1.0, curve: widget.innerAnimation)));

    final secondAnimation = Tween<double>(begin: -1.0, end: 0.0).animate(
        CurvedAnimation(
            parent: controller2,
            curve: Interval(0.0, 1.0, curve: widget.outerAnimation)));

    // reverse or same direction animation
    widget.reverse
        ? animation2 = ReverseAnimation(secondAnimation)
        : animation2 = secondAnimation;

    controller2.repeat();
    controller1.repeat();
  }
}

class Arc2Painter extends CustomPainter {
  Arc2Painter({this.color, this.iconsSize = 3});

  final Color? color;
  final double iconsSize;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint p = Paint()
      ..color = color!
      ..strokeWidth = 1.0
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    final Rect rect = Rect.fromLTWH(0.0, 0.0, size.width, size.height);

    // draw the three arcs
    canvas.drawArc(rect, 0.0, 0.67 * pi, false, p);
    canvas.drawArc(rect, 0.74 * pi, 0.65 * pi, false, p);
    canvas.drawArc(rect, 1.46 * pi, 0.47 * pi, false, p);

    //first shape
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.2 - iconsSize,
            size.width * 0.9 - iconsSize, iconsSize * 2, iconsSize * 2),
        p);

    //second shape
    //draw the inner cross
    final centerX = size.width * 0.385;
    final centerY = size.width * 0.015;
    final lineLength = iconsSize / 2;
    canvas.drawLine(Offset(centerX - lineLength, centerY + lineLength),
        Offset(centerX + lineLength, centerY - lineLength), p);
    canvas.drawLine(Offset(centerX + lineLength, centerY + lineLength),
        Offset(centerX - lineLength, centerY - lineLength), p);

    // the circle
    canvas.drawCircle(Offset(centerX, centerY), iconsSize + 1, p);

    // third shape
    canvas.drawOval(
        Rect.fromLTWH(size.width - iconsSize * 1.5,
            size.width * 0.445 - iconsSize, iconsSize * 3, iconsSize * 2),
        p);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class Arc1Painter extends CustomPainter {
  Arc1Painter({this.color, this.iconsSize = 3});

  final Color? color;
  final double iconsSize;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint p = Paint()
      ..color = color!
      ..strokeWidth = 1
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    final Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);

    // draw the two arcs
    canvas.drawArc(rect, 0.15, 0.9 * pi, false, p);
    canvas.drawArc(rect, 1.05 * pi, 0.9 * pi, false, p);

    // draw the cross
    final centerY = size.width / 2;
    canvas.drawLine(Offset(-iconsSize, centerY - iconsSize),
        Offset(iconsSize, centerY + iconsSize), p);
    canvas.drawLine(Offset(iconsSize, centerY - iconsSize),
        Offset(-iconsSize, centerY + iconsSize), p);

    // draw the circle
    canvas.drawCircle(Offset(size.width, centerY), iconsSize, p);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
