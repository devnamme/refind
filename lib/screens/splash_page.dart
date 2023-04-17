import 'dart:async';

import 'package:flutter/material.dart';
import 'package:refind/screens/main_app.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text('Splash Page'),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => const MainApp()));
  }
}
