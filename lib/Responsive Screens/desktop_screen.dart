import 'package:flutter/material.dart';
import 'package:responsive_portfolio/utils/about_description.dart';
import 'package:responsive_portfolio/utils/about_section.dart';
import 'package:responsive_portfolio/utils/custom_appbar.dart';

import '../constants.dart';
import '../utils/about_container.dart';
import '../utils/ideas_container.dart';
import '../utils/ui_portfolio.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kbackgroundColor,
        body: Center(
          child: Row(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
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
                  const SizedBox(
                    height: 15,
                  ),
                  const UiPortfolio()
                ],
              ),
              const Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  CustomAppBar(),
                  AboutSection(),
                  AboutDescription()
                ],
              )
            ],
          ),
        ));
  }
}
