import 'package:flutter/material.dart';

import '../constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: size.width < 500
            ? double.infinity
            : size.width < 1100
                ? 400
                : 550,
        height: size.width < 500 ? 60 : 50,
        decoration: BoxDecoration(
            color: kbackgroundWidgetColor,
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: RichText(
                text: const TextSpan(
                    text: 'Bim',
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                    children: [
                      TextSpan(
                        text: 'Graph',
                        style: TextStyle(color: Colors.white),
                      )
                    ]),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
