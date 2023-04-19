import 'package:flutter/material.dart';
import 'package:refind/widgets/item_card.dart';
import 'package:refind/widgets/table/checkout_button.dart';

class ProfileOrders extends StatelessWidget {
  const ProfileOrders({
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
    return ListView(
      padding: const EdgeInsets.only(
        bottom: 24,
      ),
      children: [
        Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 14,
                ),
                padding: const EdgeInsets.all(16),
                height: 184,
                decoration: const BoxDecoration(
                  color: Color(0xFF4DDDA0),
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 20),
                            Text(
                              "Delivery Details",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "Juan Dela Cruz",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                            Text(
                              "(+63) 912 345 6789",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                            Text(
                              "1234 Bulag St., Dimakita, Hanapin City",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Seller Name",
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ],
          ),
        ),
        Container(
          height: 272,
          padding: EdgeInsets.all(16),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: DATA
                .map((e) => Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: ItemCard(
                        url: e['url']!,
                        clothingName: e['name']!,
                        size: e['size']!,
                        sellerName: e['seller']!,
                        duration: 7,
                        durationProgress: 69,
                        showDuration: true,
                      ),
                    ))
                .toList(),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Seller Name",
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ],
          ),
        ),
        Container(
          height: 272,
          padding: EdgeInsets.all(16),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: DATA
                .map((e) => Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: ItemCard(
                        url: e['url']!,
                        clothingName: e['name']!,
                        size: e['size']!,
                        sellerName: e['seller']!,
                        duration: 7,
                        durationProgress: 69,
                        showDuration: true,
                      ),
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
