import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:refind/screens/splash_page.dart';
import 'package:refind/buttons/small_button.dart';

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
        // textTheme: TextTheme(),
        primarySwatch: Colors.blue,
      ),
      home: const SmallButton(text: "Bid"),
    );
  }
}
