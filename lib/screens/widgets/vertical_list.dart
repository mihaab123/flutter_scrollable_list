import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_scrollable_list/blocs/scrollable_list_bloc.dart';
import 'package:flutter_scrollable_list/screens/widgets/vertical_list_item.dart';

class VerticalList extends StatelessWidget {
  const VerticalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScrollableListBloc, ScrollableListState>(
        builder: (context, state) {
      return ListView.builder(
          shrinkWrap: true,
          itemCount: state.itemsList.length,
          itemBuilder: (BuildContext ctxt, int index) {
            return VerticalListItem(
              item: state.itemsList[index],
            );
          });
    });
  }
}
