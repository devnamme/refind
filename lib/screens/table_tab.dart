import 'package:flutter/material.dart';
import 'package:refind/widgets/home_hero.dart';
import 'package:refind/widgets/table_categories.dart';

class TableTab extends StatefulWidget {
  const TableTab({super.key});

  @override
  State<TableTab> createState() => _TableTabState();
}

class _TableTabState extends State<TableTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeHero(),
        TableCategories(),
      ],
    );
  }
}
