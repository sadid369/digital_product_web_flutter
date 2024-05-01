import 'package:digital_product_web_flutter/utils/app_colors.dart';
import 'package:digital_product_web_flutter/utils/images_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Container4 extends StatefulWidget {
  const Container4({Key? key}) : super(key: key);

  @override
  _Container4State createState() => _Container4State();
}

class _Container4State extends State<Container4> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.only(left: width * 0.02),
      height: height * 0.9,
      decoration: BoxDecoration(
          // border: Border.all(color: Colors.red),
          ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final w = constraints.maxWidth;
          final h = constraints.maxHeight;
          return Stack(
            children: [
              Positioned(
                top: 60,
                left: 250,
                child: Image.asset(
                  ImagePath.dot,
                ),
              ),
              Positioned(
                left: 0,
                bottom: 10,
                child: Image.asset(
                  ImagePath.ellipse_3,
                ),
              ),
              Positioned(
                bottom: 120,
                right: 200,
                child: Image.asset(
                  ImagePath.ellipse_2,
                ),
              ),
              Positioned(
                left: -20,
                bottom: -50,
                child: Image.asset(
                  ImagePath.unsplash_man,
                ),
              ),
              Positioned(
                right: 20,
                bottom: 40,
                child: Image.asset(
                  ImagePath.group_71,
                ),
              ),
              Positioned(
                right: 400,
                top: 20,
                child: Column(
                  children: [
                    Text(
                      "What our happy client say",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Several selected clients, who already believe in our service.",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 400,
                top: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Matthew Paul",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Perfect, very good job! Thank you for the amazing\ndesign and work. Really impressed with the high quality\nand quick turnaround time. Highly recommend.",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: AppColors.blue,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.7),
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.7),
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.7),
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.7),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
