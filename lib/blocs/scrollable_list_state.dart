part of 'scrollable_list_bloc.dart';

class ScrollableListState extends Equatable {
  const ScrollableListState({List<ItemModel>? itemsList})
      : itemsList = itemsList ?? const [];

  final List<ItemModel> itemsList;

  @override
  List<Object?> get props => [itemsList];

  ScrollableListState copyWith({
    List<ItemModel>? itemsList,
  }) {
    return ScrollableListState(
      itemsList: itemsList ?? this.itemsList,
    );
  }
}
