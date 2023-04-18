import 'package:flutter/material.dart';
import 'package:refind/constants/app_colors.dart';
import 'package:refind/widgets/rrect_button.dart';

const TITLES = [
  'Mine Price',
  'Increment Price',
  'Grab Price',
  'Clothing Condition',
  'Clothing Type',
];

const DESCRIPTIONS = [
  'The Mine Price is the item’s minimum bid price.',
  'The Increment Price is the amount by which the item’s price increases by with each new bid.',
  'The Grab Price is the item’s maximum possible bid price, buyers can purchase the item  immediately for this price.',
  'Select the current condition of this item.',
  'Select which category of clothing this item falls under.',
];

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  double? minePrice;
  double? incrementPrice;
  double? grabPrice;
  String? condition;
  String? type;

  int? activeMenu;

  Widget imagePreview() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.white,
        ),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      width: 52,
      height: 52,
    );
  }

  Widget generateButton(
    int index,
    bool hasValue,
    String text,
    String activeText,
    VoidCallback onTap,
  ) {
    if (!hasValue) onTap();

    return Expanded(
      child: RRectButton(
        isSmall: true,
        text: hasValue ? activeText : text,
        onTap: () {
          setState(() {
            activeMenu = index;
          });
        },
        backgroundColor: !hasValue ? AppColors.DARK_GRAY : AppColors.PRIMARY,
        textColor: !hasValue ? Colors.white : Colors.black,
      ),
    );
  }

  List<Widget> generateGroup() {
    if (activeMenu! >= 0 && activeMenu! <= 2) {
      return [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.remove_outlined),
          color: AppColors.PRIMARY,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            border: Border.all(
              color: AppColors.PRIMARY,
              width: 2,
            ),
            color: AppColors.SECONDARY,
          ),
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 10),
          child: Text(
            'P ${(activeMenu! == 0 ? minePrice : activeMenu! == 1 ? incrementPrice : grabPrice).toString()}',
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: AppColors.PRIMARY,
                ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.add_rounded),
          color: AppColors.PRIMARY,
        ),
      ];
    }

    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // camera
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://picsum.photos/900/1600'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // back
          // controls
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xCC000000),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              padding: EdgeInsets.fromLTRB(20, 16, 20, 28),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // size
                  Row(
                    children: [],
                  ),
                  SizedBox(height: 16),
                  // first row
                  activeMenu == null
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            generateButton(
                              0,
                              minePrice != null,
                              'Mine Price',
                              'Mine Price\nP $minePrice',
                              () => setState(() {
                                minePrice = 100;
                              }),
                            ),
                            SizedBox(width: 10),
                            generateButton(
                              1,
                              incrementPrice != null,
                              'Increment Price',
                              'Increment Price\nP $incrementPrice',
                              () => setState(() {
                                incrementPrice = 20;
                              }),
                            ),
                            SizedBox(width: 10),
                            generateButton(
                              2,
                              grabPrice != null,
                              'Grab Price',
                              'Grab Price\nP $grabPrice',
                              () => setState(() {
                                grabPrice = 300;
                              }),
                            ),
                          ],
                        )
                      : Container(),
                  activeMenu == null ? SizedBox(height: 16) : Container(),
                  // second row
                  activeMenu == null
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            generateButton(
                              3,
                              condition != null,
                              'Condition',
                              'Condition\n$condition',
                              () => setState(() {
                                condition = 'Barely Used';
                              }),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: InkWell(
                                onTap: () {},
                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: Center(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                          ),
                                          width: 48,
                                          height: 48,
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.transparent,
                                          border: Border.all(
                                            color: Colors.white,
                                            width: 4,
                                          ),
                                        ),
                                        width: 68,
                                        height: 68,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            generateButton(
                              4,
                              type != null,
                              'Type',
                              'Type\n$type',
                              () => setState(() {
                                type = 'Others';
                              }),
                            ),
                          ],
                        )
                      : Container(),
                  SizedBox(height: 24),
                  // images
                  activeMenu == null
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    imagePreview(),
                                    SizedBox(width: 16),
                                    imagePreview(),
                                    SizedBox(width: 16),
                                    imagePreview(),
                                    SizedBox(width: 16),
                                    imagePreview(),
                                    SizedBox(width: 16),
                                    imagePreview(),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 32),
                            RRectButton(
                              isSmall: true,
                              text: 'List item',
                              onTap: () {},
                              backgroundColor: AppColors.SECONDARY,
                              textColor: Colors.white,
                            )
                          ],
                        )
                      : Container(
                          decoration: BoxDecoration(
                            color: AppColors.DARK_GRAY,
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                          ),
                          width: double.maxFinite,
                          padding: EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Set ${TITLES[activeMenu!]}',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium
                                    ?.copyWith(
                                      color: Colors.white,
                                    ),
                              ),
                              SizedBox(height: 16),
                              // group
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: generateGroup(),
                              ),
                              SizedBox(height: 16),
                              // desc
                              Text(
                                DESCRIPTIONS[activeMenu!],
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium
                                    ?.copyWith(
                                      color: Colors.white,
                                    ),
                              ),
                              SizedBox(height: 16),
                              Row(
                                children: [
                                  Spacer(),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        activeMenu = null;
                                      });
                                    },
                                    child: Text(
                                      'Done',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium
                                          ?.copyWith(
                                            color: AppColors.PRIMARY,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
