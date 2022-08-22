import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_module/routes/login_routes.dart';
import 'package:login_module/routes/navigation_streams_callback.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  late NavigationStreams navigationStreams;

  @override
  void initState() {
    navigationStreams = Get.find<NavigationStreams>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('OTP Screen'),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              navigationStreams.callbackStream?.add('Message from OTP Screen');
            },
            child: const Text('Go to Landing Screen'),
          )
        ],
      ),
    );
  }
}
