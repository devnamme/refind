import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:refind/screens/main_app.dart';
import 'package:refind/screens/splash_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Refind',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          displayLarge: GoogleFonts.fredoka(
            fontSize: 45,
            fontWeight: FontWeight.bold,
          ),
          displayMedium: GoogleFonts.fredoka(
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
          displaySmall: GoogleFonts.openSans(
            fontSize: 45,
          ),
          headlineLarge: GoogleFonts.fredoka(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          headlineMedium: GoogleFonts.openSans(
            fontSize: 28,
            fontWeight: FontWeight.w500,
          ),
          headlineSmall: GoogleFonts.fredoka(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
          bodyLarge: GoogleFonts.openSans(
            fontSize: 16,
          ),
          bodyMedium: GoogleFonts.openSans(
            fontSize: 14,
          ),
          bodySmall: GoogleFonts.openSans(
            fontSize: 12,
          ),
          labelLarge: GoogleFonts.fredoka(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          labelMedium: GoogleFonts.fredoka(
            fontSize: 14,
          ),
          labelSmall: GoogleFonts.fredoka(
            fontSize: 11,
            fontWeight: FontWeight.w600,
          ),
          titleLarge: GoogleFonts.fredoka(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
          titleMedium: GoogleFonts.openSans(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          titleSmall: GoogleFonts.openSans(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      home: const MainApp(),
    );
  }
}
