import 'package:flutter/material.dart';
import 'package:responsive_portfolio/constants.dart';
import 'package:responsive_portfolio/utils/about_description.dart';
import 'package:responsive_portfolio/utils/about_section.dart';
import 'package:responsive_portfolio/utils/custom_appbar.dart';
import 'package:responsive_portfolio/utils/ideas_container.dart';
import 'package:responsive_portfolio/utils/ui_portfolio.dart';

import '../utils/about_container.dart';

class TabletScreen extends StatelessWidget {
  const TabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      body: Column(
        children: [
          const CustomAppBar(),
          Row(
            children: [
              Column(
                children: [
                  const IdeasContainer(),
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
                  const UiPortfolio()
                ],
              ),
              const Column(
                children: [AboutSection(), AboutDescription()],
              )
            ],
          ),
          // Row(
          //   children: [UiPortfolio(), AboutDescription()],
          // ),
        ],
      ),
    );
  }
}
