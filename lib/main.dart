import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:refind/screens/main_app.dart';
import 'package:refind/screens/splash_page.dart';

void main() {
  runApp(const App());
  // runApp(MultiProvider(
  //   providers: [
  //     // ChangeNotifierProvider(create: (_) => FAuth()),
  //   ],
  //   child: App(),
  // ));
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
            fontSize: 57,
            // height: 64,
          ),
          displayMedium: GoogleFonts.fredoka(
            fontSize: 45,
            // height: 52,
          ),
          displaySmall: GoogleFonts.openSans(
            fontSize: 36,
            // height: 44,
          ),
          headlineLarge: GoogleFonts.fredoka(
            fontSize: 32,
            // height: 40,
            fontWeight: FontWeight.w500,
          ),
          headlineMedium: GoogleFonts.openSans(
            fontSize: 28,
            // height: 36,
            fontWeight: FontWeight.w700,
          ),
          headlineSmall: GoogleFonts.fredoka(
            fontSize: 24,
            // height: 32,
          ),
          titleLarge: GoogleFonts.fredoka(
            fontSize: 22,
            // height: 28,
          ),
          titleMedium: GoogleFonts.openSans(
            fontSize: 16,
            // height: 24,
          ),
          titleSmall: GoogleFonts.openSans(
            fontSize: 14,
            // height: 20,
          ),
          labelLarge: GoogleFonts.fredoka(
            fontSize: 14,
            // height: 20,
          ),
          labelMedium: GoogleFonts.fredoka(
            fontSize: 12,
            // height: 16,
          ),
          labelSmall: GoogleFonts.fredoka(
            fontSize: 11,
            // height: 16,
          ),
          bodyLarge: GoogleFonts.openSans(
            fontSize: 16,
            // height: 24,
          ),
          bodyMedium: GoogleFonts.openSans(
            fontSize: 14,
            // height: 20,
          ),
          bodySmall: GoogleFonts.roboto(
            fontSize: 12,
            // height: 16,
          ),
        ),
      ),
      home: const SplashPage(),
    );
  }
}
