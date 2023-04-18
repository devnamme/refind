import 'package:flutter/material.dart';

class TableCategories extends StatefulWidget {
  const TableCategories({
    super.key,
    required this.categories,
  });

  @override
  State<TableCategories> createState() => _TableCategoriesState();

  final List<Widget> categories;
}

class _TableCategoriesState extends State<TableCategories> {
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
            padding: EdgeInsets.symmetric(vertical: 14),
            child: Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium
                  ?.copyWith(color: selected ? Colors.green : Colors.black),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(100),
                topRight: Radius.circular(100),
              ),
              color: selected ? Colors.green : const Color(0x00FFFFFF),
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
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFF8FAF6),
          border: Border(
            bottom: BorderSide(
              color: const Color(0xFFE1E3DF),
              width: 1,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: widget.categories,
        ),
      ),
    );
  }
}
