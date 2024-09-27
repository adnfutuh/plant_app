import 'package:flutter/material.dart';
import 'package:plant_app/module/home/screens/sections/home_appbar.dart';
import 'package:plant_app/module/home/screens/sections/home_header.dart';
import 'package:plant_app/module/home/screens/sections/home_recommended.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeAppbar(),
      body: Column(
        children: [
          HomeHeader(),
          SizedBox(height: 30),
          HomeRecommended(),
        ],
      ),
    );
  }
}
