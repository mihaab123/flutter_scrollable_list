import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_scrollable_list/blocs/scrollable_list_bloc.dart';
import 'package:flutter_scrollable_list/constants/themes.dart';

class HorizontalList extends StatelessWidget {
  final ScrollController scrollController;
  const HorizontalList({Key? key, required this.scrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScrollableListBloc, ScrollableListState>(
        builder: (context, state) {
      return SizedBox(
        height: 40,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            controller: scrollController,
            shrinkWrap: true,
            itemCount: state.itemsList.length,
            itemBuilder: (BuildContext ctxt, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width / 4 - 20,
                  color: AppThemes().colorGrey,
                ),
              );
            }),
      );
    });
  }
}
