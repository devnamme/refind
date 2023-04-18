import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:refind/constants/app_colors.dart';
import 'package:refind/widgets/clothing_card.dart';
import 'package:refind/widgets/rrect_button.dart';

class ClothingTab extends StatefulWidget {
  const ClothingTab({super.key});

  @override
  State<ClothingTab> createState() => _ClothingTabState();
}

class _ClothingTabState extends State<ClothingTab> {
  double peekProgress = 0.0;
  double vertPeek = 0.0;

  Stopwatch stopwatch = Stopwatch();
  Timer? stopwatchTimer;
  bool isMined = false;

  bool timerDone = false;

  List<Map<String, String>> DATA = [
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

  startStopwatch() async {
    timerDone = false;

    stopTimers();
    stopwatch.start();

    stopwatchTimer = Timer.periodic(Duration(milliseconds: 10), (timer) {
      setState(() {});
      if (stopwatch.elapsedMilliseconds / 1000 >= 5) {
        stopwatch.stop();
        timer.cancel();

        timerDone = true;

        removeTop();
      }
    });
  }

  stopTimers() {
    stopwatchTimer?.cancel();
    stopwatch.stop();
    stopwatch.reset();
  }

  removeTop() {
    setState(() {
      DATA.removeLast();
    });
  }

  @override
  void dispose() {
    stopwatchTimer?.cancel();
    super.dispose();
  }

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
        // peek
        Opacity(
          opacity: 1.0 - peekProgress,
          child: Container(
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
        ),
        // white cover
        Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()
            ..translate(0, vertPeek > 0 ? min(vertPeek, 200) : 0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.elliptical(
                  peekProgress * MediaQuery.of(context).size.width / 2,
                  peekProgress * 64,
                ),
                topRight: Radius.elliptical(
                  peekProgress * MediaQuery.of(context).size.width / 2,
                  peekProgress * 64,
                ),
              ),
            ),
          ),
        ),
        // all details
        Positioned.fill(
          child: Opacity(
            opacity: peekProgress,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 64),
                  // mine price
                  Text(
                    'P10.00',
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                          color: AppColors.SECONDARY,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  SizedBox(height: 24),
                  // timer
                  Container(
                    width: 210,
                    height: 210,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 20,
                          offset: Offset(0, 16),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(8),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: CircularProgressIndicator(
                            value: max(
                              0,
                              (stopwatch.elapsedMilliseconds / 1000) / 5.0,
                            ),
                            strokeWidth: 6,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                AppColors.SECONDARY70),
                          ),
                        ),
                        Center(
                          child: Text(
                            timerDone
                                ? 'MINE'
                                : 'MINE\nIN ${max(0, 5.0 - stopwatch.elapsedMilliseconds / 1000).ceil()}s',
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                  color: AppColors.SECONDARY,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 32),
                  // text
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: AppColors.SECONDARY,
                          ),
                      children: [
                        TextSpan(text: 'Others can '),
                        TextSpan(
                          text: 'Steal',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: ' this item\nwithin '),
                        TextSpan(
                          text: '36 hours',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  // or
                  Opacity(
                    opacity: timerDone ? 1 : 0,
                    child: Text(
                      'OR',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: AppColors.PRIMARY,
                          ),
                    ),
                  ),
                  SizedBox(height: 16),
                  // button
                  Opacity(
                    opacity: timerDone ? 1 : 0,
                    child: IgnorePointer(
                      ignoring: !timerDone,
                      child: RRectButton(
                        text: 'Grab now for P100.00',
                        onTap: () {
                          setState(() {
                            peekProgress = 0.0;
                            vertPeek = 0.0;
                            stopTimers();
                          });
                        },
                        backgroundColor: AppColors.SECONDARY,
                        textColor: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  // cancel
                  RRectButton(
                    text: timerDone ? 'Okay, gotcha!' : 'I changed my mind',
                    onTap: () {
                      setState(() {
                        peekProgress = 0.0;
                        vertPeek = 0.0;
                        stopTimers();
                      });
                    },
                    backgroundColor: Colors.transparent,
                    textColor: AppColors.SECONDARY,
                  ),
                  SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ),
        // cards
        Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()
            ..translate(0, vertPeek > 0 ? vertPeek : 0),
          child: Container(
            padding: EdgeInsets.all(16),
            child: Stack(
              children: DATA
                  .map(
                    (d) => ClothingCard(
                      url: d['url']!,
                      clothingName: d['name']!,
                      clothingSize: [d['size']!],
                      sellerName: d['seller']!,
                      onPeek: (val, peekRaw) {
                        setState(() {
                          peekProgress = val;
                          vertPeek = peekRaw;
                        });
                      },
                      startStopwatch: startStopwatch,
                      removeTop: removeTop,
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
