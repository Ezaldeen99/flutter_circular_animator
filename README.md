# widget_circular_animator

A new Flutter widget animator inspired by this lottie animation. [https://lottiefiles.com/3619-profile]

## Example

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
