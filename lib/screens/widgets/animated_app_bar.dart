import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_scrollable_list/screens/widgets/circle_line_painter.dart';

class AnimatedAppBar extends StatefulWidget {
  final bool reverse;
  const AnimatedAppBar({Key? key, required this.reverse}) : super(key: key);

  @override
  State<AnimatedAppBar> createState() => _AnimatedAppBarState();
}

class _AnimatedAppBarState extends State<AnimatedAppBar>
    with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    if (!widget.reverse) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final rotationTween = Tween<double>(begin: 0.0, end: 2 * pi);
    if (!widget.reverse) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            alignment: Alignment.centerRight,
            child: AnimatedBuilder(
              animation: _animationController,
              builder: (BuildContext context, Widget? child) {
                return Transform(
                  origin: const Offset(-40, 5),
                  transform: Matrix4.identity()
                    ..rotateZ(
                        rotationTween.transform(_animationController.value)),
                  child: child,
                );
              },
              child: CustomPaint(
                painter: CircleLinePainter(),
              ),
            )));
  }
}
