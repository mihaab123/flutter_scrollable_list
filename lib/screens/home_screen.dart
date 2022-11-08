import 'package:flutter/material.dart';
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
  @override
  void initState() {
    super.initState();

    mainController.addListener(() {
      if (mainController.hasClients && secondController.hasClients) {
        secondController.jumpTo(mainController.offset);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    ScrollableListBloc bloc = ScrollableListBloc();
    bloc.add(GetScrollableListEvent());
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 80, child: AnimatedAppBar()),
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
