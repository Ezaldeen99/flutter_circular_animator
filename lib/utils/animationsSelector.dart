import 'package:flutter/animation.dart';

/// A collection of common animation curves.
///
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_bounce_in.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_bounce_in_out.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_bounce_out.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_decelerate.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_ease.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_ease_in.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_ease_in_sine.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_ease_in_quad.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_ease_in_cubic.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_ease_in_quart.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_ease_in_quint.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_ease_in_expo.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_ease_in_circ.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_ease_in_back.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_ease_in_out.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_ease_in_out_sine.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_ease_in_out_quad.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_ease_in_out_cubic.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_ease_in_out_quart.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_ease_in_out_quint.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_ease_in_out_expo.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_ease_in_out_circ.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_ease_in_out_back.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_ease_out.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_ease_out_sine.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_ease_out_quad.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_ease_out_cubic.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_ease_out_quart.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_ease_out_quint.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_ease_out_expo.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_ease_out_circ.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_ease_out_back.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_elastic_in.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_elastic_in_out.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_elastic_out.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_fast_out_slow_in.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_slow_middle.mp4}
/// {@animation 464 192 https://flutter.github.io/assets-for-api-docs/assets/animation/curve_linear.mp4}

class Animations {
  static const Curve linear = Curves.linear;
  static const Curve decelerate = Curves.decelerate;
  static const Curve fastLinearToSlowEaseIn = Curves.fastLinearToSlowEaseIn;
  static const Curve ease = Curves.ease;
  static const Curve easeIn = Curves.easeIn;
  static const Curve easeInToLinear = Curves.easeInToLinear;
  static const Curve easeInSine = Curves.easeInSine;
  static const Curve easeInQuad = Curves.easeInQuad;
  static const Curve easeInCubic = Curves.easeInCubic;
  static const Curve easeInQuart = Curves.easeInQuart;
  static const Curve easeInQuint = Curves.easeInQuint;
  static const Curve easeInExpo = Curves.easeInExpo;
  static const Curve easeInCirc = Curves.easeInCirc;
  static const Curve easeInBack = Curves.easeInBack;
  static const Curve easeOut = Curves.easeOut;
  static const Curve linearToEaseOut = Curves.linearToEaseOut;
  static const Curve easeOutSine = Curves.easeOutSine;
  static const Curve easeOutQuad = Curves.easeOutQuad;
  static const Curve easeOutCubic = Curves.easeOutCubic;
  static const Curve easeOutQuart = Curves.easeOutQuart;
  static const Curve easeOutQuint = Curves.easeOutQuint;
  static const Curve easeOutExpo = Curves.easeOutExpo;
  static const Curve easeOutCirc = Curves.easeOutCirc;
  static const Curve easeOutBack = Curves.easeOutBack;
  static const Curve easeInOut = Curves.easeInOut;
  static const Curve easeInOutSine = Curves.easeInOutSine;
  static const Curve easeInOutQuad = Curves.easeInOutQuad;
  static const Curve easeInOutCubic = Curves.easeInOutCubic;
  static const Curve easeInOutQuart = Curves.easeInOutQuart;
  static const Curve easeInOutQuint = Curves.easeInOutQuint;
  static const Curve easeInOutExpo = Curves.easeInOutExpo;
  static const Curve easeInOutCirc = Curves.easeInOutCirc;
  static const Curve easeInOutBack = Curves.easeInOutBack;
  static const Curve fastOutSlowIn = Curves.fastOutSlowIn;
  static const Curve slowMiddle = Curves.slowMiddle;
  static const Curve bounceIn = Curves.bounceIn;
  static const Curve bounceOut = Curves.bounceOut;
  static const Curve bounceInOut = Curves.bounceInOut;
  static const Curve elasticIn = Curves.elasticIn;
  static const Curve elasticOut = Curves.elasticOut;
  static const Curve elasticInOut = Curves.elasticInOut;
}
