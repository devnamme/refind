import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:refind/widgets/item_card.dart';

class TableBids extends StatelessWidget {
  const TableBids({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 2,
        itemCount: 8, // The number of items you want to display
        itemBuilder: (BuildContext context, int index) => const ItemCard(
          showDuration: true,
        ),
        staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
      ),
    );
  }
}
