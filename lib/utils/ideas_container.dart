import 'package:flutter/material.dart';

import '../constants.dart';

class IdeasContainer extends StatelessWidget {
  const IdeasContainer({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      // padding: EdgeInsets.only(left: size.width < 500 ? 7.0 : 8, top: 8),
      padding: const EdgeInsets.all(8),
      child: Container(
        width: size.width < 500
            ? double.infinity
            : size.width < 1100
                ? 450
                : 520,
        height: size.width < 500
            ? 150
            : size.width < 1100
                ? 175 //tablet
                : 225, //desktop
        decoration: BoxDecoration(
          color: kbackgroundWidgetColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Bringing your ideas',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: size.width < 500 ? 35 : 50,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'To Life Through',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: size.width < 500 ? 35 : 45,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'UI Design',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: size.width < 500 ? 35 : 45,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                      width: size.width < 500
                          ? 100
                          : size.width < 1100
                              ? 120
                              : 130,
                      height: size.width < 500
                          ? 30
                          : size.width < 1100
                              ? 40
                              : 50,
                      decoration: BoxDecoration(
                          color: kblueandPurpleColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              'Hire Me',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Image(
                              height: 20,
                              image: AssetImage('assets/wavyhand.png'),
                            ),
                          )
                        ],
                      ))),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
