# widget_circular_animator

A new Flutter widget animator inspired by this lottie animation. [https://lottiefiles.com/3619-profile]



![Alt demo](https://github.com/Ezaldeen99/widget_circular_animator/blob/master/screenshots/example1.gif)

The widget helps to animate any widget you have such as a profile or an image or anything else with a simple modren animatins to help you build a better UI in your next app.\



## Use Examples 

<img src="https://github.com/Ezaldeen99/widget_circular_animator/blob/master/screenshots/example3.gif" width="100" height="200">
<img src="https://github.com/Ezaldeen99/widget_circular_animator/blob/master/screenshots/example2.gif" width="100" height="200">



you can costumize anything in this widget, inner and outer colors, icons size and animation duration to suits your applications use-case.


## Example

an example on how to costumize this widget for whatever you want

```
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
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey[200]),
              child: Icon(
                Icons.person_outline,
                color: Colors.deepOrange[200],
                size: 60,
              ),
            ),
          ),
        )),
      ),
    );
  }
}
```
