import 'package:flutter/material.dart';
import 'package:refind/constants/app_colors.dart';
import 'package:refind/widgets/clothing_card.dart';

class ClothingTab extends StatefulWidget {
  const ClothingTab({super.key});

  @override
  State<ClothingTab> createState() => _ClothingTabState();
}

class _ClothingTabState extends State<ClothingTab> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // green gradient
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 256,
            decoration: BoxDecoration(
              gradient: AppColors.GRADIENT_PRIMARY_TO_BOTTOM,
            ),
          ),
        ),
        // white cover
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
        ),
        // peek
        Container(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'MINE',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: AppColors.SECONDARY,
                        ),
                  ),
                  Text(
                    'for\nP 10.00',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: AppColors.SECONDARY,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.SECONDARY,
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 4,
                  horizontal: 16,
                ),
                child: Text(
                  'OR',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'GRAB',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: AppColors.SECONDARY,
                        ),
                  ),
                  Text(
                    'for\nP 100.00',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: AppColors.SECONDARY,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ),
        // cards
        Container(
          padding: EdgeInsets.all(16),
          child: ClothingCard(
            clothingName: 'Clothing Name',
            clothingSize: ['S', 'M'],
            sellerName: 'Seller Name',
          ),
        ),
      ],
    );
  }
}
