import 'package:digital_product_web_flutter/utils/images_path.dart';
import 'package:flutter/material.dart';

class Container3 extends StatefulWidget {
  const Container3({Key? key}) : super(key: key);

  @override
  _Container3State createState() => _Container3State();
}

class _Container3State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.only(left: width * 0.02),
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          // border: Border.all(color: Colors.red),
          ),
      height: height * 0.6,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final w = constraints.maxWidth;
          final h = constraints.maxHeight;
          return Stack(
            children: [
              Positioned(
                bottom: 0,
                right: w / 2,
                child: Image.asset(
                  ImagePath.ellipse_2,
                ),
              ),
              Positioned(
                top: 40,
                right: 480,
                child: Image.asset(
                  ImagePath.rectangle3,
                ),
              ),
              Positioned(
                top: 0,
                left: 50,
                child: Container(
                  decoration: BoxDecoration(
                      // border: Border.all(color: Colors.black),
                      // borderRadius: BorderRadius.circular(20),
                      ),
                  child: Image.asset(
                    ImagePath.unsplash_group,
                    width: w * 0.4,
                    height: h * 0.9,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                  right: 240,
                  top: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        textAlign: TextAlign.start,
                        'Great Digital Product\nAgency since 2016 ',
                        style: TextStyle(
                          fontSize: w * 0.023,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Our Business Plan is a written document describing a company's core\nbusiness activites, Objectives, and how it plans to achieve its goals. Our\ngoal is to provide our client high quality Product with modern idea\naccordingly their budgets and according thir reuirements.",
                        style: TextStyle(
                          fontSize: w * 0.009,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )),
            ],
          );
        },
      ),
    );
  }
}
