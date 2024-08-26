import 'package:flutter/material.dart';

class CounterAnimationScreen extends StatefulWidget {
  const CounterAnimationScreen({super.key, required this.endValue, required this.delayTime});

  final int endValue;
  final int delayTime;

  @override
  CounterAnimationScreenState createState() => CounterAnimationScreenState();
}

class CounterAnimationScreenState extends State<CounterAnimationScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<int> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration:
          Duration(seconds: widget.delayTime), // Duration of the animation
      vsync: this,
    );

    _animation = IntTween(begin: 0, end: widget.endValue).animate(_controller)
      ..addListener(() {
        setState(() {}); // Rebuild the widget with the current animation value
      });

    _controller.forward(); // Start the animation
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose of the controller when done
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Text(
          _animation.value.toString(),
          style: const TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        );
      },
    );
  }
}
