import 'package:flutter/material.dart';

import '../constants.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 8, bottom: 8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
                width: size.width < 500
                    ? 210
                    : size.width < 1100
                        ? 300
                        : 300,
                fit: BoxFit.fill,
                image: const AssetImage('assets/mainpicture.png')),
          ),
        ),
        Column(
          children: [
            //Name Container
            Padding(
              padding: EdgeInsets.only(
                  right: 35, top: 8, left: size.width < 1100 ? 0 : 10),
              child: Container(
                  width: size.width < 500
                      ? 180
                      : size.width < 1100
                          ? 200
                          : 200,
                  height: 50,
                  decoration: BoxDecoration(
                      color: kbackgroundWidgetColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Name:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Text(
                          'Bima Sakti',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ],
                  )),
            ),

            //Location Container
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 5, right: 30),
              child: Container(
                  width: size.width < 500 ? 180 : 200,
                  height: size.width < 500
                      ? 170
                      : size.width < 100
                          ? 190
                          : 260,
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
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              'Based In:',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Text(
                              'Tanjung Pinang',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          width: size.width < 500 ? 150 : 200,
                          height: size.width < 500 ? 150 : 200,
                          decoration: BoxDecoration(
                            color: kbackgroundWidgetColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Image(
                              image: AssetImage('assets/location.png')),
                        ),
                      ),
                    ],
                  )),
            ),

            //Socials Container
            Padding(
              padding: const EdgeInsets.only(right: 30, bottom: 5),
              child: Container(
                  width: size.width < 500
                      ? 180
                      : size.width < 1100
                          ? 200
                          : 200,
                  height: 50,
                  decoration: BoxDecoration(
                      color: kbackgroundWidgetColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 3.0),
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: kbackgroundWidgetColor,
                          backgroundImage: AssetImage('assets/linkedIn.png'),
                        ),
                      ),
                      CircleAvatar(
                        radius: 17,
                        backgroundColor: kbackgroundWidgetColor,
                        backgroundImage: AssetImage('assets/lastIcon.png'),
                      ),
                      CircleAvatar(
                        radius: 17,
                        backgroundColor: kbackgroundWidgetColor,
                        backgroundImage: AssetImage('assets/twitterIcon.png'),
                      ),
                      CircleAvatar(
                        radius: 17,
                        backgroundColor: kbackgroundWidgetColor,
                        backgroundImage: AssetImage('assets/InstaIcon.png'),
                      ),
                    ],
                  )),
            ),
          ],
        )
      ],
    );
  }
}
