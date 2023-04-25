import 'package:flutter/material.dart';
import 'package:responsive_portfolio/constants.dart';
import 'package:responsive_portfolio/utils/about_container.dart';
import 'package:responsive_portfolio/utils/about_description.dart';
import 'package:responsive_portfolio/utils/about_section.dart';
import 'package:responsive_portfolio/utils/custom_appbar.dart';
import 'package:responsive_portfolio/utils/ideas_container.dart';
import 'package:responsive_portfolio/utils/ui_portfolio.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const CustomAppBar(),
            const IdeasContainer(),
            const AboutSection(),
            Row(
              children: [
                const AboutContainer(
                    color: Colors.green,
                    text1: '2+',
                    text2: 'Years Experience',
                    textColor: Colors.white),
                AboutContainer(
                    color: Colors.orange.shade400,
                    text1: '54+',
                    text2: 'Handled Project',
                    textColor: Colors.black),
                AboutContainer(
                    color: Colors.pink.shade300,
                    text1: '40+',
                    text2: 'Clients',
                    textColor: Colors.white),
              ],
            ),
            const UiPortfolio(),
            const AboutDescription(),
          ],
        ),
      ),
    );
  }
}
