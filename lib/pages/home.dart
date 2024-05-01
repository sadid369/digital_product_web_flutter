import 'package:digital_product_web_flutter/pages/container1.dart';
import 'package:digital_product_web_flutter/pages/container2.dart';
import 'package:digital_product_web_flutter/pages/container3.dart';
import 'package:digital_product_web_flutter/pages/container4.dart';
import 'package:digital_product_web_flutter/pages/container5.dart';
import 'package:digital_product_web_flutter/pages/footer.dart';
import 'package:digital_product_web_flutter/pages/navbar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Navbar(),
            Container1(),
            Container2(),
            Container3(),
            Container4(),
            Container5(),
            Footer()
          ],
        ),
      ),
    );
  }
}
