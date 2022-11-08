import 'package:flutter/material.dart';
import 'package:flutter_scrollable_list/constants/themes.dart';

class AnimatedAppBar extends StatelessWidget {
  const AnimatedAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
          alignment: Alignment.centerRight,
          child: Stack(
            children: [
              Container(
                height: 1,
                width: 60,
                color: AppThemes().colorGrey,
              ),
              CircleAvatar(
                backgroundColor: AppThemes().colorGrey,
              )
            ],
          )),
    );
  }
}
