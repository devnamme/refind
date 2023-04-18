import 'package:flutter/material.dart';
import 'package:refind/constants/app_colors.dart';
import 'package:refind/screens/closet_tab.dart';
import 'package:refind/screens/clothing_tab.dart';
import 'package:refind/screens/table_tab.dart';
import 'package:refind/screens/profile_tab.dart';

const TITLES = [
  'Profile',
  'Clothes Rack',
  'Refind',
  'Closet',
];

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int bottomNavIndex = 2;

  BottomNavigationBarItem customBottomNavBarItem(
    int index,
    IconData icon,
  ) {
    return BottomNavigationBarItem(
      icon: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: bottomNavIndex == index
              ? const Color(0x334DDDA0)
              : Colors.transparent,
        ),
        height: 48,
        width: 48,
        child: Icon(
          icon,
          color: Colors.black,
          size: 24,
        ),
      ),
      label: TITLES[index],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomNavIndex == 0
          ? ProfileTab()
          : bottomNavIndex == 1
              ? TableTab()
              : bottomNavIndex == 2
                  ? ClothingTab()
                  : ClosetTab(),
      appBar: AppBar(
        backgroundColor: Color(0xFFF4FFF6),
        leading: bottomNavIndex == 2
            ? IconButton(
                icon: Icon(Icons.undo),
                onPressed: () {},
                color: AppColors.SECONDARY60,
              )
            : Container(),
        title: Text(
          TITLES[bottomNavIndex],
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                foreground: Paint()
                  ..shader = AppColors.GRADIENT_SEAFOAM_TO_BOTTOM.createShader(
                    Rect.fromLTWH(0, 0, 200, 50),
                  ),
              ),
        ),
        actions: bottomNavIndex == 2
            ? [
                Builder(
                  builder: (ctx) => Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: IconButton(
                      icon: const Icon(Icons.filter_list),
                      onPressed: () {
                        Scaffold.of(ctx).openEndDrawer();
                      },
                      color: AppColors.SECONDARY60,
                    ),
                  ),
                ),
              ]
            : [],
        elevation: 0,
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.SURFACE,
        currentIndex: bottomNavIndex,
        onTap: (val) => {
          setState(() {
            bottomNavIndex = val;
          })
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          customBottomNavBarItem(
            0,
            Icons.account_circle_sharp,
          ),
          customBottomNavBarItem(
            1,
            Icons.table_restaurant_outlined,
          ),
          customBottomNavBarItem(
            2,
            // clothes icon
            Icons.abc_outlined,
          ),
          customBottomNavBarItem(
            3,
            Icons.checkroom_outlined,
          ),
        ],
      ),
      endDrawer: Drawer(),
    );
  }
}
