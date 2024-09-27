import 'package:flutter/material.dart';
import 'package:plant_app/const/colors.dart';
import 'package:plant_app/const/size.dart';
import 'package:plant_app/const/text.dart';
import 'package:plant_app/screens/components/favorite_button.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 2,
      itemBuilder: (context, index) {
        return Stack(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(5, 5, 15, 5),
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                color: grey1,
                borderRadius: kDefaultBorderRadius,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 2,
                    spreadRadius: 1,
                  )
                ],
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 300,
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Image.asset(
                            'assets/images/Plant${index + 1}.png',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 20,
                            top: 10,
                          ),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              "\$40",
                              style: bold.copyWith(
                                fontSize: 20,
                                color: black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          borderRadius: kDefaultBorderRadius,
                          color: white,
                        ),
                        child: Text(
                          "add to cart",
                          style: bold.copyWith(
                            color: black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: white,
                        ),
                        child: const FavoriteButton(),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
