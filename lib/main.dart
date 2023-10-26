import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_page/features/home/screens/desktop_home_screen.dart';
import 'package:responsive_page/features/home/screens/phone_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aimed Labs',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: GoogleFonts.ralewayTextTheme(),
      ),
      home: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 1100) {
            return const DesktopHomeScreen();
          } else if (constraints.maxWidth > 600) {
            return const DesktopHomeScreen();
          } else {
            return const PhoneHomeScreen();
          }
        },
      ),
    );
  }
}
