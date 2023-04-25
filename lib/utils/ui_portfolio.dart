import 'package:flutter/material.dart';
import 'package:responsive_portfolio/constants.dart';

class UiPortfolio extends StatelessWidget {
  const UiPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(8.0),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(
                    'UI Portfolio',
                    style: TextStyle(
                        fontSize: size.width < 500 ? 15 : 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    'See all',
                    style: TextStyle(
                        fontSize: size.width < 500 ? 15 : 20,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Stack(children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image(
                            image: const AssetImage('assets/UIFirst.png'),
                            height: size.width < 500 ? 120 : 150,
                            width: size.width < 500 ? 120 : 150,
                            fit: BoxFit.fill,
                          )),
                      Container(
                        width: size.width < 500 ? 120 : 150,
                        height: size.width < 500 ? 120 : 150,
                        decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(6)),
                        child: const Center(
                            child: Text(
                          'Read More',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                      //Image with black Background
                    ]),
                  ),
                ),
                reusableContainer('assets/UISecond.png', context),
                reusableContainer('assets/UIThird.png', context),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget reusableContainer(String imagepath, BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: size.width < 500 ? 120 : 160,
        height: size.width < 500 ? 120 : 170,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image(fit: BoxFit.cover, image: AssetImage(imagepath)),
        ),
      ),
    );
  }
}
