import 'package:flutter/material.dart';
import 'package:refind/widgets/home_hero.dart';
import 'package:refind/widgets/table/table_bids.dart';
import 'package:refind/widgets/table/table_categories.dart';
import 'package:refind/widgets/table/table_yours.dart';

class TableTab extends StatefulWidget {
  const TableTab({super.key});

  @override
  State<TableTab> createState() => _TableTabState();
}

class _TableTabState extends State<TableTab> {
  int categoryIndex = 0;

  Widget categoryItem(bool selected, int index, String text) {
    return InkWell(
      onTap: () {
        setState(() {
          categoryIndex = index;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 14),
            child: Text(
              text,
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: selected
                      ? const Color(0xFF006C4A)
                      : const Color(0xFF404943)),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(100),
                topRight: Radius.circular(100),
              ),
              color:
                  selected ? const Color(0xFF006C4A) : const Color(0x00FFFFFF),
            ),
            height: 3,
            width: 24,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        categoryIndex == 0 ? HomeHero() : Container(),
        TableCategories(
          categories: [
            categoryItem(categoryIndex == 0, 0, "Bids"),
            categoryItem(categoryIndex == 1, 1, "Yours"),
            categoryItem(categoryIndex == 2, 2, "Not Yours"),
          ],
        ),
        Expanded(
          child: categoryIndex == 0
              ? const TableBids()
              : categoryIndex == 1
                  ? const TableYours()
                  : Container(),
        ),
      ],
    );
  }
}
