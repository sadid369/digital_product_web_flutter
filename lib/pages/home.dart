import 'package:digital_product_web_flutter/pages/container1.dart';
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
      body: Column(
        children: [
          Navbar(),
          Container1(),
        ],
      ),
    );
  }
}
