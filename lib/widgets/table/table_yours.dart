import 'package:flutter/material.dart';
import 'package:refind/widgets/item_card.dart';
import 'package:refind/widgets/table/checkout_button.dart';

class TableYours extends StatelessWidget {
  const TableYours({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(
        bottom: 24,
      ),
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Seller Name",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              Text(
                "Php 1,500.00",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
        Container(
          height: 272,
          padding: EdgeInsets.all(16),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
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
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Expanded(
                child: Container(),
              ),
              CheckoutButton(
                text: "Checkout",
                onTap: () {},
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
              Text(
                "Php 1,500.00",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
        Container(
          height: 272,
          padding: EdgeInsets.all(16),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
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
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Expanded(
                child: Container(),
              ),
              CheckoutButton(
                text: "Checkout",
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
