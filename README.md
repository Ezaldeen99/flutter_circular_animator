# widget_circular_animator

A new Flutter widget animator inspired by this lottie animation. [https://lottiefiles.com/3619-profile]


[![pub](https://img.shields.io/pub/v/widget_circular_animator.svg)](https://pub.dev/packages/widget_circular_animator/install)


<div align="center">
<img src="https://github.com/Ezaldeen99/widget_circular_animator/raw/master/screenshots/example2.gif" width="30%" height="30%" alt="person"/>
<img src="https://github.com/Ezaldeen99/widget_circular_animator/raw/master/screenshots/example3.gif" width="30%" height="30%" alt="clock"/>
<img src="https://github.com/Ezaldeen99/widget_circular_animator/raw/master/screenshots/example.gif" width="30%" height="30%" alt="person"/>
</div>

# Features

**Dynamic Animation**

The widget helps to animate any widget you have such as a profile or an image or anything else with a simple modern animation to help you build a better UI in your next app.


**Configurable Widget**

you can customize anything in this widget, inner and outer colors, icons size and animation duration to suits your applications use-case.

**Supports all flutter curves animations**

Now you can change the circles animations type, you can see all the supported animations here [curves-animation](https://api.flutter.dev/flutter/animation/Curves-class.html)

**Change animation direction**

Choose the animation direction, reverse or same direction

# Installing

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  widget_circular_animator: _latest_version
```

Now in your Dart code, you can use:

```dart
import 'package:widget_circular_animator/widget_circular_animator.dart';
```

Details see [pub.dev](https://pub.dev/packages/widget_circular_animator/install).

# Usage

The `widget_circular_animator` package itself is very simple to use, just like a common `statefulWidget`:

```dart

      Center(
          child: WidgetCircularAnimator(
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey[200]),
              child: Icon(
                Icons.person_outline,
                color: Colors.deepOrange[200],
                size: 60,
              ),
            ),
        )),

```



See the full example [circular_animator_example](https://github.com/Ezaldeen99/flutter_circular_animator/tree/master/example).


# Widget Properties

**child**

*Widget*

*( required )*

widget_circular_animator is mainly configured by passing a widget value to be the widget that we will surround with our animations. 


**innerIconsSize**

*double*

Change the icons size for the inner circle


**outerIconsSize**

*double*

Change the icons size for the outer circle

**innerAnimation**

*Curve*

Please use the animations class in the current library for example

```dart
          innerAnimation: Animations.bounceIn,
```

**outerAnimation**

*Curve*

Please use the animations class in the current library for example.

```dart
          innerAnimation: Animations.linear,

```

**innerColor**

*Color*

Change the inner circle stroke color


**outerColor**

*Color*

Change the outer circle stroke color


**innerAnimationSeconds**

*int*

Change the inter circle animation duration

**outerAnimationSeconds**

*int*

Change the outer circle animation duration


**size**

*double*

The whole widget width and height.

**reverse**

*double*

The animation direction.

# Blog


[widget_circular_animator_medium](https://medium.com/@ezaldden99/introducing-a-new-flutter-widget-animator-b499c1a98ee5) 


# Supported animations
This widget supports all flutter curve animations.
You can see all the supported animations here https://api.flutter.dev/flutter/animation/Curves-class.html.

The class [Animations](https://github.com/Ezaldeen99/flutter_circular_animator/tree/master/lib/utils/animationsSelector.dart) is already there in the library to make things easier on you choosing your animation


---

If you have any suggestions or requests, please open an [issue](https://github.com/Ezaldeen99/flutter_circular_animator/issues).


