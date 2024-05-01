import 'package:digital_product_web_flutter/utils/app_colors.dart';
import 'package:digital_product_web_flutter/utils/images_path.dart';
import 'package:flutter/material.dart';

class Container5 extends StatefulWidget {
  const Container5({Key? key}) : super(key: key);

  @override
  _Container5State createState() => _Container5State();
}

class _Container5State extends State<Container5> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.only(left: width * 0.02),
      height: height * 0.55,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final w = constraints.maxWidth;
          final h = constraints.maxHeight;
          return Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: Image.asset(
                  ImagePath.dot,
                ),
              ),
              Positioned(
                left: 0,
                bottom: 10,
                child: Image.asset(
                  ImagePath.rectangle4,
                ),
              ),
              Positioned(
                right: 57.5,
                bottom: 30,
                child: Container(
                  width: w * 0.4,
                  height: h * 0.8,
                  decoration: BoxDecoration(
                    color: AppColors.blue,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        bottomLeft: Radius.circular(
                          100,
                        ),
                        topRight: Radius.circular(25),
                        bottomRight: Radius.circular(25)),
                    // border: Border.all(
                    //     // color: Colors.blueAccent,
                    //     ),
                  ),
                ),
              ),
              Positioned(
                left: 80,
                bottom: 30,
                child: Container(
                  // padding: EdgeInsets.only(left: 40),
                  width: w * 0.9,
                  height: h * 0.8,
                  decoration: BoxDecoration(
                    color: AppColors.blue.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(25),
                    // border: Border.all(
                    //     // color: Colors.blueAccent,
                    //     ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Subscribe Newsletter",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "I will update good news and promotion service not spam",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 500,
                        decoration: BoxDecoration(
                          // color: Colors.black,
                          borderRadius: BorderRadius.circular(
                            35,
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter your email address..',
                            filled: true,
                            fillColor: Colors.white,
                            suffixIcon: Container(
                              margin: EdgeInsets.only(right: 10),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.blue,
                                  minimumSize: Size(
                                    w * 0.01,
                                    w * 0.005,
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Contact Now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: w * 0.01,
                                  ),
                                ),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
