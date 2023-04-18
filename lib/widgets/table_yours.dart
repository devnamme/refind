import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:refind/widgets/table_card.dart';

class TableYours extends StatelessWidget {
  const TableYours({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 2,
        itemCount: 8, // The number of items you want to display
        itemBuilder: (BuildContext context, int index) => const TableCard(),
        staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
    );
  }
}
