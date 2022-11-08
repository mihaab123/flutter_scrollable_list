import 'package:flutter/material.dart';
import 'package:flutter_scrollable_list/constants/themes.dart';
import 'package:flutter_scrollable_list/models/item_model.dart';

class VerticalListItem extends StatelessWidget {
  final ItemModel item;
  const VerticalListItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: AppThemes().mainGradient,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: Text(
                item.description,
                style: AppThemes().mainTextStyle,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item.id,
                    textAlign: TextAlign.center,
                    style: AppThemes().mainTextStyle,
                  ),
                  Text(
                    item.name,
                    style: AppThemes().mainTextStyle,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Divider(
                height: 1,
                color: AppThemes().colorWhite,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _valWidget(),
                  _valWidget(),
                  _valWidget(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _valWidget() {
    return Column(
      children: [
        Text("Val", style: AppThemes().blackTextStyle),
        Text(
          "?",
          style: AppThemes().greenTextStyle,
        ),
      ],
    );
  }
}
