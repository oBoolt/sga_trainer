import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sga_trainer/pages/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SGA Trainer',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.blueGrey, brightness: Brightness.dark),
          useMaterial3: true,
          textTheme: GoogleFonts.poppinsTextTheme()),
      home: HomePage(),
    );
  }
}
