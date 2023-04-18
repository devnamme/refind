import 'package:flutter/material.dart';
import 'package:refind/widgets/home_hero.dart';
import 'package:refind/widgets/profile_main.dart';
import 'package:refind/widgets/table_bids.dart';
import 'package:refind/widgets/table_card.dart';
import 'package:refind/widgets/table_categories.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
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
              color: selected ? Color(0xFF006C4A) : const Color(0x00FFFFFF),
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
        TableCategories(
          categories: [
            categoryItem(categoryIndex == 0, 0, "Main"),
            categoryItem(categoryIndex == 1, 1, "Orders"),
            categoryItem(categoryIndex == 2, 2, "Shipped"),
          ],
        ),
        Expanded(
          child: categoryIndex == 0
              ? ProfileMain()
              : categoryIndex == 1
                  ? TableCard()
                  : TableCard(),
        ),
      ],
    );
  }
}
