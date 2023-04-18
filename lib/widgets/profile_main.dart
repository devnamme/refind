import 'package:flutter/material.dart';
import 'package:refind/widgets/add_listing.dart';
import 'package:refind/widgets/closet_card.dart';
import 'package:refind/widgets/table_card.dart';

class ProfileMain extends StatelessWidget {
  const ProfileMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 184,
          decoration: BoxDecoration(
            color: const Color(0xFF4DDDA0),
          ),
        ),
        Container(
          height: 272,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFFE8FFEF),
          ),
          child: ListView(
            scrollDirection: Axis.horizontal,
            // axis spacing

            children: [
              AddListing(),
              SizedBox(width: 8),
              ClosetCard(),
              SizedBox(width: 8),
              ClosetCard(),
              SizedBox(width: 8),
              ClosetCard(),
              SizedBox(width: 8),
              ClosetCard(),
              SizedBox(width: 8),
            ],
          ),
        ),
      ],
    );
  }
}
