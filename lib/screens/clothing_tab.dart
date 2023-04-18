import 'package:flutter/material.dart';
import 'package:refind/widgets/clothing_card.dart';

class ClothingTab extends StatefulWidget {
  const ClothingTab({super.key});

  @override
  State<ClothingTab> createState() => _ClothingTabState();
}

class _ClothingTabState extends State<ClothingTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: ClothingCard(
        clothingName: 'Clothing Name',
        clothingSize: 'S',
        sellerName: 'Seller Name',
      ),
    );
  }
}
