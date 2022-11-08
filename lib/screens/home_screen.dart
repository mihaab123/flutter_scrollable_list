import 'package:flutter/material.dart';
import 'package:flutter_scrollable_list/blocs/scrollable_list_bloc.dart';
import 'package:flutter_scrollable_list/screens/widgets/animated_app_bar.dart';
import 'package:flutter_scrollable_list/screens/widgets/vertical_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollableListBloc bloc = ScrollableListBloc();
    bloc.add(GetScrollableListEvent());
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: const [AnimatedAppBar(), VerticalList()],
            ),
          ),
        ),
      ),
    );
  }
}
