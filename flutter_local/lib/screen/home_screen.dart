import 'package:flutter/material.dart';
import 'package:flutter_local/screen/basic_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      child: BasicScreen(),
    );
  }
}
