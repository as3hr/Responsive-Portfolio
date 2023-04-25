import 'package:flutter/material.dart';

class AboutContainer extends StatelessWidget {
  final Color color;
  final String text1;
  final String text2;
  final Color textColor;
  const AboutContainer(
      {super.key,
      required this.color,
      required this.text1,
      required this.text2,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
          left: size.width < 500 ? 15 : 0,
          top: size.width < 500 ? 5 : 10,
          bottom: size.width < 500 ? 5 : 0,
          right: 3),
      child: Container(
        width: size.width < 500
            ? 135
            : size.width < 1100
                ? 150
                : 170,
        height: size.width < 500
            ? 140
            : size.width < 1100
                ? 160
                : 190,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                text1,
                style: TextStyle(
                    color: textColor,
                    fontSize: size.width < 500 ? 30 : 32,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                text2,
                style: TextStyle(
                    color: textColor,
                    fontSize: size.width < 500 ? 16 : 20,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
