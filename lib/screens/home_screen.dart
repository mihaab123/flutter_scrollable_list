import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_scrollable_list/blocs/scrollable_list_bloc.dart';
import 'package:flutter_scrollable_list/screens/widgets/animated_app_bar.dart';
import 'package:flutter_scrollable_list/screens/widgets/horizontal_list.dart';
import 'package:flutter_scrollable_list/screens/widgets/vertical_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController mainController = ScrollController();
  final ScrollController secondController = ScrollController();
  bool reverse = false;
  double previousOffset = 0;
  @override
  void initState() {
    super.initState();
    BlocProvider.of<ScrollableListBloc>(context).add(GetScrollableListEvent());
    mainController.addListener(() {
      if (mainController.hasClients && secondController.hasClients) {
        secondController.jumpTo(mainController.offset);
        if (mainController.offset > previousOffset) {
          reverse = true;
        } else {
          reverse = false;
        }
        setState(() {
          previousOffset = mainController.offset;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                  height: 80,
                  child: AnimatedAppBar(
                    reverse: reverse,
                    value: previousOffset / 10000,
                  )),
              VerticalList(
                scrollController: mainController,
              ),
              SizedBox(
                  height: 40,
                  child: HorizontalList(scrollController: secondController))
            ],
          ),
        ),
      ),
    );
  }

  _scrollListener() {}
}
