import 'package:flutter/material.dart';

class TableCategories extends StatefulWidget {
  const TableCategories({super.key});

  @override
  State<TableCategories> createState() => _TableCategoriesState();
}

class _TableCategoriesState extends State<TableCategories> {
  int bottomNavIndex = 0;

  Widget bottomNavItem(bool selected, int index, String text) {
    return InkWell(
      onTap: () {
        setState(() {
          bottomNavIndex = index;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: selected ? Colors.black : Colors.red,
                ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          bottomNavItem(bottomNavIndex == 0, 0, 'Bids'),
          bottomNavItem(bottomNavIndex == 1, 1, 'Yours'),
          bottomNavItem(bottomNavIndex == 2, 2, 'Not Yours'),
        ],
      ),
    );
  }
}
