# widget_circular_animator

A new Flutter widget animator inspired by this lottie animation. [https://lottiefiles.com/3619-profile]


[![pub](https://img.shields.io/pub/v/widget_circular_animator.svg)](https://pub.dev/packages/widget_circular_animator/install)


<div align="center">
<img src="https://github.com/Ezaldeen99/widget_circular_animator/blob/master/screenshots/example_1.gif" width="33%" height="33%" alt="person"/>
<img src="https://github.com/Ezaldeen99/widget_circular_animator/blob/master/screenshots/example_2.gif" width="33%" height="33%" alt="clock"/>
<img src="https://github.com/Ezaldeen99/widget_circular_animator/blob/master/screenshots/example.gif" width="33%" height="33%" alt="person"/>
</div>

# Features

**Reactive Updating**

The widget helps to animate any widget you have such as a profile or an image or anything else with a simple modren animatins to help you build a better UI in your next app.


**Configurable Widget**

you can costumize anything in this widget, inner and outer colors, icons size and animation duration to suits your applications use-case.

# Installing

Add this to your package's pubspec.yaml file:

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

The `widget_circular_animator` package itself is very simple to use, just like a common `statefullWidget`:

```

          Center(
          child: WidgetCircularAnimator(
            size: 200,
            innerIconsSize: 3,
            outerIconsSize: 3,
            innerColor: Colors.deepOrange,
            outerColor: Colors.deepPurple,
            innerAnimationSeconds: 30,
            outerAnimationSeconds: 30,
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

change the icons size for the inner circle


**outerIconsSize**

*double*

change the icons size for the outer circle


**innerColor**

*Color*

change the inner circle stroke color


**outerColor**

*Color*

change the outer circle stroke color


**innerAnimationSeconds**

*int*

change the inter circle animation duration

**outerAnimationSeconds**

*int*

change the outer circle animation duration


**size**

*double*

The whole widget width and height.


# Blog


[widget_circular_animator_medium](https://medium.com/p/b499c1a98ee5/edit) 


---

If you have any suggestions or requests, please open an [issue](https://github.com/Ezaldeen99/flutter_circular_animator/issues).


