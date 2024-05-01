// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CardWidgets extends StatelessWidget {
  final String logo;
  final Color logoBg;
  final String mainHeading;
  final String subHeading;
  final double width;
  final double height;
  const CardWidgets({
    super.key,
    required this.logo,
    required this.logoBg,
    required this.mainHeading,
    required this.subHeading,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        // border: Border.all(color: Colors.black),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 3,
            blurRadius: 2,
            offset: const Offset(1, 3), // changes position of shadow
          ), //BoxShadow
        ],
        borderRadius: BorderRadius.circular(25),
      ),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(width * 0.005),
              width: width * 0.05,
              height: width * 0.05,
              decoration: BoxDecoration(
                color: logoBg,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(logo),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: width * 0.012,
                fontWeight: FontWeight.bold,
              ),
              mainHeading,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              textAlign: TextAlign.center,
              subHeading,
              style: TextStyle(
                fontSize: width * 0.01,
                // fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
