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

  Widget bottomNavItem(bool selected, int index, String text) {
    return InkWell(
      onTap: () {
        setState(() {
          bottomNavIndex = index;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 56,
            height: 32,
            decoration: BoxDecoration(
              color:
                  selected ? const Color(0xFFBAEAFF) : const Color(0x00FFFFFF),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            margin: const EdgeInsets.only(bottom: 4),
          ),
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .labelMedium
                .copyWith(color: Colors.black),
          ),
        ],
      ),
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
        leading: Center(
          child: Text('Leading'),
        ),
        title: Text('Refind'),
        actions: [
          Center(
            child: Text('Profile'),
          ),
        ],
        centerTitle: true,
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFECEEEA),
        ),
        height: 64,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              bottomNavItem(bottomNavIndex == 0, 0, 'Table'),
              bottomNavItem(bottomNavIndex == 1, 1, 'Clothing'),
              bottomNavItem(bottomNavIndex == 2, 2, 'Closet'),
            ],
          ),
        ),
      ),
    );
  }
}
