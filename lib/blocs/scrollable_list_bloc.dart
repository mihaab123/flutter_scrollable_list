import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_scrollable_list/models/item_model.dart';

part 'scrollable_list_event.dart';
part 'scrollable_list_state.dart';

class ScrollableListBloc
    extends Bloc<ScrollableListEvent, ScrollableListState> {
  ScrollableListBloc() : super(const ScrollableListState()) {
    on<GetScrollableListEvent>(_mapGetListEventToState);
  }

  _mapGetListEventToState(
      ScrollableListEvent event, Emitter<ScrollableListState> emit) async* {
    if (event is GetScrollableListEvent) {
      String data = Uri.encodeQueryComponent(
          '{data: "%7B%0A%20%20%20%20id%3A%20u64%2C%0A%20%20%20%20name%3A%20TestName%2C%0A%20%20%20%20description%3ADescription%20so%20long%20as%20possible%20in%20json%20but%20not%20her...%0A%7D"}');
      yield ScrollableListState(
          itemsList: List.generate(10000, (index) => ItemModel()));
    }
  }
}
