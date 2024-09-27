import 'package:flutter/material.dart';
import 'package:plant_app/module/home/screens/components/home_card.dart';

import '../../../../const/text.dart';

class HomeRecommended extends StatelessWidget {
  const HomeRecommended({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            'Recommended Plants',
            style: medium.copyWith(fontSize: 22),
          ),
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.only(left: 15),
          child: SizedBox(
            height: 380,
            child: HomeCard(),
          ),
        )
      ],
    );
  }
}
