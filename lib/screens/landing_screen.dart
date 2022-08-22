import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingScreen extends StatefulWidget {
  LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  var data = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Landing Screen'),
          Text('${data[0]}'),
        ],
      ),
    );
  }
}
