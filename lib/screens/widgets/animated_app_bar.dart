import 'package:flutter/material.dart';

class AnimatedAppBar extends StatelessWidget {
  const AnimatedAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Align(
        alignment: Alignment.centerRight,
        child: CircleAvatar(
          backgroundColor: Colors.grey,
        ));
  }
}
