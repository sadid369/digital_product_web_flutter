import 'package:digital_product_web_flutter/utils/app_colors.dart';
import 'package:digital_product_web_flutter/utils/images_path.dart';
import 'package:digital_product_web_flutter/wdigets/card_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  Container2State createState() => Container2State();
}

class Container2State extends State<Container2> {
  List<Map<String, dynamic>> cardData = [
    {
      "logo": ImagePath.box_search,
      "logoBg": AppColors.cardBoxLogoBd,
      "mainHeading": 'Business Idea\nPlanning',
      "subHeading": 'We present you a proposal and\ndiscuss niffty-gritty like'
    },
    {
      "logo": ImagePath.wallet,
      "logoBg": AppColors.cardWaletLogoBd,
      "mainHeading": 'Financial\nPlanning System',
      "subHeading": 'Protocols apart from aengage\nmodels, pricing billing'
    },
    {
      "logo": ImagePath.code_1,
      "logoBg": AppColors.cardCodeLogoBd,
      "mainHeading": 'Development\nWebsite and App',
      "subHeading": 'Communication protocols apart\nfrom engagement models'
    },
    {
      "logo": ImagePath.chart_square,
      "logoBg": AppColors.cardChrtLogoBd,
      "mainHeading": 'Market Analysis\nProject',
      "subHeading": 'Protocols apart from aengage\nmodels, pricing billing'
    },
  ];
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.8,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final w = constraints.maxWidth;
          final h = constraints.maxHeight;
          return Stack(
            children: [
              Positioned(
                bottom: 10,
                right: 120,
                child: Image.asset(
                  ImagePath.ellipse_3,
                ),
              ),
              Positioned(
                bottom: 30,
                left: 0,
                child: Image.asset(
                  ImagePath.group_70,
                ),
              ),
              Positioned(
                right: 0,
                bottom: 50,
                child: Container(
                  // decoration: BoxDecoration(
                  //   border: Border.all(color: Colors.black),
                  // ),
                  child: Image.asset(
                    // alignment: Alignment.topLeft,
                    ImagePath.rectangle1,
                    width: w * 0.75,
                    height: h * 0.8,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                bottom: h / 2,
                child: Image.asset(
                  // alignment: Alignment.center,
                  ImagePath.rectangle2,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'How can we help\nyour Business ?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: w * 0.03,
                        ),
                      ),
                      SizedBox(
                        height: w * 0.02,
                      ),
                      Text(
                        'We build ready made websites, mobile applications,\nand elaborate online business services.',
                        style: TextStyle(
                          fontSize: w * 0.01,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    // margin: EdgeInsets.only(bottom: 20),
                    width: w * 0.4,
                    height: h,
                    child: GridView.builder(
                      itemCount: 4,
                      shrinkWrap: true,
                      // physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        // crossAxisSpacing: 20,
                        // mainAxisExtent: 200,
                        childAspectRatio: 1.1,
                      ),
                      itemBuilder: (context, index) {
                        final data = cardData[index];
                        return CardWidgets(
                          logo: data['logo'],
                          logoBg: data['logoBg'],
                          mainHeading: data['mainHeading'],
                          subHeading: data['subHeading'],
                          width: width,
                          height: height,
                        );
                      },
                    ),
                  )
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
