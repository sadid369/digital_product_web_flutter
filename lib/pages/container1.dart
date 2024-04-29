import 'package:digital_product_web_flutter/utils/app_colors.dart';
import 'package:digital_product_web_flutter/utils/images_path.dart';
import 'package:flutter/material.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  Container1State createState() => Container1State();
}

class Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        SizedBox(
          height: height * 0.70,
          // decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: width * 0.02),
                // decoration: BoxDecoration(
                //   border: Border.all(color: Colors.green, width: 2),
                // ),
                width: width * 0.40,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    final w = constraints.maxWidth;
                    // final h = constraints.maxHeight;
                    return Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          child: Image.asset(
                            ImagePath.group_70,
                            width: w * 0.6,
                            height: w * 0.6,
                            // color: Colors.red,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'A Digital Product Agency',
                              style: TextStyle(
                                fontSize: w * 0.08,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: w * 0.055,
                            ),
                            Text(
                              textAlign: TextAlign.start,
                              'Leading digital agency with solid design and development\nexpertise. We build ready made websites, mobile applications,\nand elaborate online business services.',
                              style: TextStyle(
                                fontSize: w * 0.03,
                                // fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: w * 0.055,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.blue,
                                minimumSize: Size(w * 0.1, w * 0.09),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Contact Now',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: w * 0.03,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
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
                          right: w * 0.1,
                          child: Image.asset(
                            ImagePath.rectangle5,
                            width: w * 0.2,
                            height: h * 0.2,

                            // r
                          ),
                        ),
                        Positioned(
                          left: 0,
                          // top: w * 0.1,
                          child: Image.asset(
                            ImagePath.ellipse_1,
                            width: w * 0.2,
                            height: h * 0.2,
                            // color: Colors.red,
                            alignment: Alignment.topLeft,
                            // fit: BoxFit.fitHeight,
                          ),
                        ),
                        Positioned(
                          right: 0,
                          // top: w * 0.06,
                          child: Image.asset(
                            ImagePath.talking_man,
                            width: w * 0.95,
                            height: h * 0.9,
                            fit: BoxFit.fitWidth,
                            alignment: Alignment.topRight,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: width * 0.02, right: width * 0.02),
          alignment: Alignment.topLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Our Client',
                    style: TextStyle(
                      fontSize: width * 0.02,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Several selected clients, who already\nbelieve in our service.',
                    style: TextStyle(
                      fontSize: width * 0.01,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: width * 0.6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      ImagePath.google_logo,
                    ),
                    Image.asset(
                      ImagePath.airbnb_logo,
                    ),
                    Image.asset(
                      ImagePath.uber_eats_logo,
                    ),
                    Image.asset(
                      ImagePath.amazon_logo,
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
