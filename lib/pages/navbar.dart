import 'package:digital_product_web_flutter/utils/images_path.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  NavbarState createState() => NavbarState();
}

class NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.05, vertical: width * 0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: width * 0.07,
            // height: width * 0.1,
            child: Image.asset(
              ImagePath.logo,
              fit: BoxFit.contain,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Home',
                  style: TextStyle(
                    fontSize: width * 0.01,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'What We Do',
                  style: TextStyle(
                    fontSize: width * 0.01,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Service',
                  style: TextStyle(
                    fontSize: width * 0.01,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Project',
                  style: TextStyle(
                    fontSize: width * 0.01,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Blog',
                  style: TextStyle(
                    fontSize: width * 0.01,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Contact',
                  style: TextStyle(
                    fontSize: width * 0.01,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
