import 'dart:developer';

import 'package:digital_product_web_flutter/utils/app_colors.dart';
import 'package:digital_product_web_flutter/utils/images_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Container1 extends StatefulWidget {
  const Container1({Key? key}) : super(key: key);

  @override
  _Container1State createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    print(height);
    print(height * 0.85);
    return Container(
      height: height * 0.85,
      // decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 40),
            // decoration: BoxDecoration(
            //   border: Border.all(color: Colors.green, width: 2),
            // ),
            width: width * 0.40,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  child: Image.asset(
                    ImagePath.group_70,
                    width: 200,
                    height: 200,
                    // color: Colors.red,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'A Digital Product Agency',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Leading digital agency with solid design and development expertise. We build readymade websites, mobile applications, and elaborate online business services.',
                      style: TextStyle(
                        fontSize: 12,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.blue,
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Contact Now',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            // padding: EdgeInsets.zero,
            // decoration: BoxDecoration(
            //   border: Border.all(color: Colors.red),
            // ),
            width: width * 0.595,
            // height: constraints.maxHeight,
            child: LayoutBuilder(
              builder: (context, constraints) {
                final w = constraints.maxWidth;
                final h = constraints.maxHeight;
                return Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      right: 80,
                      child: Image.asset(
                        ImagePath.rectangle5,
                        // r
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 40,
                      child: Image.asset(
                        ImagePath.ellipse_1,
                        // width: w * 0.2,
                        // height: h * 0.2,
                        // fit: BoxFit.fitHeight,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 30,
                      child: Image.asset(
                        ImagePath.talking_man,
                        width: w * 0.93,
                        height: h * 0.84,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
