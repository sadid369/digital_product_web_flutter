import 'package:digital_product_web_flutter/pages/container1.dart';
import 'package:digital_product_web_flutter/pages/navbar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Navbar(),
            Container1(),
          ],
        ),
      ),
    );
  }
}
