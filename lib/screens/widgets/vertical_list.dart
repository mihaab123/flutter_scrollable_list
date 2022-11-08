import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_scrollable_list/blocs/scrollable_list_bloc.dart';
import 'package:flutter_scrollable_list/constants/themes.dart';
import 'package:flutter_scrollable_list/models/item_model.dart';
import 'package:flutter_scrollable_list/screens/widgets/vertical_list_item.dart';

class VerticalList extends StatelessWidget {
  final ScrollController scrollController;
  const VerticalList({Key? key, required this.scrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScrollableListBloc, ScrollableListState>(
        builder: (context, state) {
      return Container(
        height: MediaQuery.of(context).size.height - 250,
        color: AppThemes().colorBlack,
        child: ListView.builder(
            controller: scrollController,
            shrinkWrap: true,
            itemCount: 100,
            itemBuilder: (BuildContext context, int index) {
              return VerticalListItem(
                item: ItemModel.fromJson(MockData),
              );
            }),
      );
    });
  }
}
