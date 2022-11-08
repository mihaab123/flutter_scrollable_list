import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_scrollable_list/constants/themes.dart';
import 'package:flutter_scrollable_list/screens/widgets/circle_line_painter.dart';

class AnimatedAppBar extends StatefulWidget {
  const AnimatedAppBar({Key? key}) : super(key: key);

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
      duration: const Duration(seconds: 7),
    );

    _animationController.repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final rotationTween = Tween<double>(begin: 0.0, end: 2 * pi);
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            alignment: Alignment.centerRight,
            child: AnimatedBuilder(
              animation: _animationController,
              builder: (BuildContext context, Widget? child) {
                return Transform(
                  origin: const Offset(-48, 5),
                  transform: Matrix4.identity()
                    ..rotateZ(
                        rotationTween.transform(_animationController.value)),
                  child: child,
                );
                // return Transform.rotate(
                //   angle: _animationController.value * 6.3,
                //   child: child,
                // );
              },
              child: CustomPaint(
                painter: CircleLinePainter(),
              ),
            )));
  }
}
