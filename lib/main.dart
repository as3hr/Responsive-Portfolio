import 'package:flutter/material.dart';
import 'package:responsive_portfolio/Responsive%20Screens/desktop_screen.dart';
import 'package:responsive_portfolio/Responsive%20Screens/mobile_screen.dart';
import 'package:responsive_portfolio/Responsive%20Screens/responsive_builder.dart';
import 'package:responsive_portfolio/Responsive%20Screens/tablet_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveBuilder(
        mobileScaffold: MobileScreen(),
        desktopScaffold: DesktopScreen(),
        tabletScaffold: TabletScreen(),
      ),
    );
  }
}
