import 'package:flutter/material.dart';
import 'package:refind/widgets/add_listing.dart';
import 'package:refind/widgets/item_card.dart';

class ProfileMain extends StatelessWidget {
  const ProfileMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 184,
          decoration: const BoxDecoration(
            color: Color(0xFF4DDDA0),
          ),
          child: Column(
            children: [
              const SizedBox(height: 72),
              Row(
                children: [
                  const SizedBox(width: 20),
                  const Icon(
                    Icons.account_circle,
                    color: Colors.white,
                    size: 91,
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      Text(
                        "Name of Person",
                        style:
                            Theme.of(context).textTheme.labelMedium?.copyWith(
                                  color: Colors.white,
                                ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Location",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
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
        Container(
          height: 272,
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
              // color: Color(0xFFE8FFEF),
              ),
          child: ListView(
            scrollDirection: Axis.horizontal,
            // axis spacing

            children: const [
              AddListing(),
              SizedBox(width: 8),
              ItemCard(),
              SizedBox(width: 8),
              ItemCard(),
              SizedBox(width: 8),
              ItemCard(),
              SizedBox(width: 8),
              ItemCard(),
              SizedBox(width: 8),
            ],
          ),
        ),
      ],
    );
  }
}
