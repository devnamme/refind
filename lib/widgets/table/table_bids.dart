import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:refind/widgets/item_card.dart';

class TableBids extends StatelessWidget {
  const TableBids({
    Key? key,
  }) : super(key: key);

  static final List<Map<String, String>> DATA = [
    {
      'url':
          'https://lh3.googleusercontent.com/d/1o8Yp1sLMqwB4d5BHYTUHNMRcGLwHbheI',
      'name': 'ateneo shirt',
      'size': 'M',
      'seller': 'Pie B. Kia',
    },
    {
      'url':
          'https://lh3.googleusercontent.com/d/1nEX-o5bqQFB0lnFfe2_xD5Kd9l9ECUBa',
      'name': 'Kai Sotto shirt',
      'size': 'M',
      'seller': 'Pie B. Kia',
    },
    {
      'url':
          'https://lh3.googleusercontent.com/d/1Uw2mqjpwg1UrTneRr2UwMxEbnwNvaiTj',
      'name': 'Long Sleeve polo',
      'size': 'M',
      'seller': 'Pie B. Kia',
    },
    {
      'url':
          'https://lh3.googleusercontent.com/d/16NZInc0DyZlDGnyPsLaZCheJMq6NlFxt',
      'name': 'Sweater from Melbourne Australia',
      'size': 'M',
      'seller': 'Pie B. Kia',
    },
    {
      'url':
          'https://lh3.googleusercontent.com/d/1exXB_tdcxCkyUemVzWMCXWU15hCFp5ic',
      'name': 'The Dress',
      'size': 'M',
      'seller': 'Pie B. Kia',
    },
    {
      'url':
          'https://lh3.googleusercontent.com/d/1dTN5z7rYolT4mhhze6YnGs7uQQWFGPhb',
      'name': 'Uniqlo polo',
      'size': 'M',
      'seller': 'Pie B. Kia',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: StaggeredGridView.count(
        crossAxisCount: 2, // The number of items you want to display
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        staggeredTiles: List.generate(
          DATA.length,
          (index) => const StaggeredTile.fit(1),
        ),
        children: List.generate(
          DATA.length,
          (index) => ItemCard(
            url: DATA[index]['url']!,
            clothingName: DATA[index]['name']!,
            size: DATA[index]['size']!,
            sellerName: DATA[index]['seller']!,
          ),
        ),
      ),
    );
  }
}
