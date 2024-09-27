import 'package:flutter/material.dart';
import 'package:plant_app/const/colors.dart';
import 'package:plant_app/const/text.dart';
import 'package:plant_app/module/home/screens/components/favorite_button.dart';
// import 'package:share/share.dart'; // Import package for sharing

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    borderRadius: BorderRadius.circular(12),
                    child: const Icon(
                      Icons.keyboard_arrow_left,
                      size: 30,
                      color: black,
                    ),
                  ),
                  Text(
                    "Details",
                    style: bold.copyWith(
                      fontSize: 20,
                      color: black,
                    ),
                  ),
                  Row(
                    children: [
                      const FavoriteButton(),
                      IconButton(
                        icon: const Icon(
                          Icons.share,
                          color: black,
                        ),
                        onPressed: () {
                          // Share.share("Check out this item!");
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Placeholder for an image
                    // Container(
                    //   height: 250,
                    //   decoration: const BoxDecoration(
                    //     image: const DecorationImage(
                    //       image: AssetImage('assets/images/plant.png'),
                    //       fit: BoxFit.cover,
                    //     ),
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        "Plant Name",
                        style: bold.copyWith(fontSize: 24, color: black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        "This is a detailed description of the plant. It includes information about its care, watering schedule, and other important details.",
                        style: regular.copyWith(fontSize: 16, color: grey3),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
