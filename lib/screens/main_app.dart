import 'package:flutter/material.dart';
import 'package:refind/constants/app_colors.dart';
import 'package:refind/screens/closet_tab.dart';
import 'package:refind/screens/clothing_tab.dart';
import 'package:refind/screens/table_tab.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int bottomNavIndex = 1;

  BottomNavigationBarItem customBottomNavBarItem(
    int index,
    IconData icon,
    String label,
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
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomNavIndex == 0
          ? TableTab()
          : bottomNavIndex == 1
              ? ClothingTab()
              : ClosetTab(),
      appBar: AppBar(
        title: Text('Refind'),
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
        fixedColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          customBottomNavBarItem(
            0,
            Icons.table_restaurant_outlined,
            'Table',
          ),
          customBottomNavBarItem(
            1,
            Icons.table_restaurant_outlined,
            'Clothing',
          ),
          customBottomNavBarItem(
            2,
            Icons.checkroom_outlined,
            'Closet',
          ),
        ],
      ),
    );
  }
}
