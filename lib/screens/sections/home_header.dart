import 'package:flutter/material.dart';
import 'package:plant_app/const/colors.dart';
import 'package:plant_app/const/text.dart';

import '../../const/size.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({super.key});

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

final List<String> _categories = [
  "All",
  "Indoor",
  "Outdoor",
  "Popular",
  "Newest",
];

int _isSelected = 0;

class _HomeHeaderState extends State<HomeHeader> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            'Find your \nfavorite plants',
            style: medium.copyWith(fontSize: 22),
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Stack(
            children: [
              Container(
                height: 110,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: green2,
                  borderRadius: kDefaultBorderRadius,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 120,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "30% OFF",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: black,
                          ),
                        ),
                        Text(
                          "26 - 24 September",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/images/Plant.png',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              _categories.length,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _isSelected = index;
                    });
                  },
                  child: Container(
                    width: 90,
                    height: 33,
                    decoration: BoxDecoration(
                      color: _isSelected == index ? green2 : Colors.transparent,
                      borderRadius: kDefaultBorderRadius,
                    ),
                    child: Center(
                      child: Text(
                        _categories[index],
                        style: medium.copyWith(
                          fontSize: 12,
                          color: _categories == index ? white : grey2,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
