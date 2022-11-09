import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_scrollable_list/models/item_model.dart';

part 'scrollable_list_event.dart';
part 'scrollable_list_state.dart';

class ScrollableListBloc
    extends Bloc<ScrollableListEvent, ScrollableListState> {
  ScrollableListBloc() : super(const ScrollableListState()) {
    on<ScrollableListEvent>(_mapGetListEventToState);
  }

  _mapGetListEventToState(
      ScrollableListEvent event, Emitter<ScrollableListState> emit) async {
    debugPrint("ScrollableListBloc");

    if (event is GetScrollableListEvent) {
      emit(ScrollableListState(
          itemsList:
              List.generate(10000, (index) => ItemModel.fromJson(MockData))));
    }
  }
}
