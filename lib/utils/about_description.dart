import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_portfolio/Model/about_text.dart';

import '../constants.dart';

class AboutDescription extends StatelessWidget {
  const AboutDescription({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Future<AboutText> _loadAboutText() async {
      String jsonString = await rootBundle.loadString('assets/AboutText.json');
      final jsonResponse = json.decode(jsonString);
      return AboutText.fromJson(jsonResponse);
    }

    return Padding(
      padding: EdgeInsets.only(
          left: 8.0,
          top: size.width < 500 ? 8 : 0,
          right: size.width < 500 ? 10 : 25,
          bottom: 8),
      child: Container(
        width: size.width < 500 ? 450 : 520,
        decoration: BoxDecoration(
            color: kbackgroundWidgetColor,
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text(
                    'About',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Text(
                    'Resume',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: FutureBuilder<AboutText>(
                  future: _loadAboutText(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Text(
                        snapshot.data!.desc,
                        style: TextStyle(
                            fontSize: size.width < 500 ? 18 : 18,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      );
                    } else if (snapshot.hasError) {
                      return Text('${snapshot.error}');
                    }
                    return const CircularProgressIndicator();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
